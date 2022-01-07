
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_scb {int dummy; } ;
struct aic7xxx_host {int dummy; } ;


 int SCBPTR ;
 unsigned char SCB_LIST_NULL ;
 int SCB_NEXT ;
 int WAITING_SCBH ;
 int aic7xxx_add_curscb_to_free_list (struct aic7xxx_host*) ;
 unsigned char aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,unsigned char,int ) ;

__attribute__((used)) static unsigned char
aic7xxx_abort_waiting_scb(struct aic7xxx_host *p, struct aic7xxx_scb *scb,
    unsigned char scbpos, unsigned char prev)
{
  unsigned char curscb, next;




  curscb = aic_inb(p, SCBPTR);
  aic_outb(p, scbpos, SCBPTR);
  next = aic_inb(p, SCB_NEXT);

  aic7xxx_add_curscb_to_free_list(p);




  if (prev == SCB_LIST_NULL)
  {



    aic_outb(p, next, WAITING_SCBH);
  }
  else
  {



    aic_outb(p, prev, SCBPTR);
    aic_outb(p, next, SCB_NEXT);
  }




  aic_outb(p, curscb, SCBPTR);
  return (next);
}
