
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic7xxx_host {int flags; TYPE_1__* scb_data; } ;
struct TYPE_2__ {int maxhscbs; } ;


 int AHC_PAGESCBS ;
 int AIC7XXX_MAXSCB ;
 scalar_t__ FREE_SCBH ;
 scalar_t__ SCBPTR ;
 scalar_t__ SCB_BUSYTARGETS ;
 scalar_t__ SCB_CONTROL ;
 int SCB_LIST_NULL ;
 scalar_t__ SCB_NEXT ;
 scalar_t__ SCB_TAG ;
 int aic_inb (struct aic7xxx_host*,scalar_t__) ;
 int aic_outb (struct aic7xxx_host*,int,scalar_t__) ;

__attribute__((used)) static void
detect_maxscb(struct aic7xxx_host *p)
{
  int i;





  if (p->scb_data->maxhscbs == 0)
  {




    aic_outb(p, 0, FREE_SCBH);

    for (i = 0; i < AIC7XXX_MAXSCB; i++)
    {
      aic_outb(p, i, SCBPTR);
      aic_outb(p, i, SCB_CONTROL);
      if (aic_inb(p, SCB_CONTROL) != i)
        break;
      aic_outb(p, 0, SCBPTR);
      if (aic_inb(p, SCB_CONTROL) != 0)
        break;

      aic_outb(p, i, SCBPTR);
      aic_outb(p, 0, SCB_CONTROL);
      aic_outb(p, i + 1, SCB_NEXT);
      aic_outb(p, SCB_LIST_NULL, SCB_TAG);
      aic_outb(p, SCB_LIST_NULL, SCB_BUSYTARGETS);
      aic_outb(p, SCB_LIST_NULL, SCB_BUSYTARGETS+1);
      aic_outb(p, SCB_LIST_NULL, SCB_BUSYTARGETS+2);
      aic_outb(p, SCB_LIST_NULL, SCB_BUSYTARGETS+3);
    }


    aic_outb(p, i - 1, SCBPTR);
    aic_outb(p, SCB_LIST_NULL, SCB_NEXT);


    aic_outb(p, 0, SCBPTR);
    aic_outb(p, 0, SCB_CONTROL);

    p->scb_data->maxhscbs = i;



    if ( i == AIC7XXX_MAXSCB )
      p->flags &= ~AHC_PAGESCBS;
  }

}
