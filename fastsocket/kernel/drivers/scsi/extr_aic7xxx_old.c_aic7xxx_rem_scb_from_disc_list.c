
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int DISCONNECTED_SCBH ;
 int SCBPTR ;
 unsigned char SCB_LIST_NULL ;
 int SCB_NEXT ;
 int aic7xxx_add_curscb_to_free_list (struct aic7xxx_host*) ;
 unsigned char aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,unsigned char,int ) ;

__attribute__((used)) static unsigned char
aic7xxx_rem_scb_from_disc_list(struct aic7xxx_host *p, unsigned char scbptr,
                               unsigned char prev)
{
  unsigned char next;

  aic_outb(p, scbptr, SCBPTR);
  next = aic_inb(p, SCB_NEXT);
  aic7xxx_add_curscb_to_free_list(p);

  if (prev != SCB_LIST_NULL)
  {
    aic_outb(p, prev, SCBPTR);
    aic_outb(p, next, SCB_NEXT);
  }
  else
  {
    aic_outb(p, next, DISCONNECTED_SCBH);
  }

  return next;
}
