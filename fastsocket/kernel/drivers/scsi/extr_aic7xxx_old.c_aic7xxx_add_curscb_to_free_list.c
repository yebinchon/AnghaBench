
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int FREE_SCBH ;
 int SCBPTR ;
 int SCB_CONTROL ;
 int SCB_LIST_NULL ;
 int SCB_NEXT ;
 int SCB_TAG ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,int ,int ) ;

__attribute__((used)) static void
aic7xxx_add_curscb_to_free_list(struct aic7xxx_host *p)
{




  aic_outb(p, SCB_LIST_NULL, SCB_TAG);
  aic_outb(p, 0, SCB_CONTROL);

  aic_outb(p, aic_inb(p, FREE_SCBH), SCB_NEXT);
  aic_outb(p, aic_inb(p, SCBPTR), FREE_SCBH);
}
