
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ciabase {unsigned char icr_data; int icr_mask; int int_mask; TYPE_1__* cia; } ;
struct TYPE_4__ {int intreq; } ;
struct TYPE_3__ {unsigned char icr; } ;


 unsigned char CIA_ICR_SETCLR ;
 int IF_SETCLR ;
 TYPE_2__ amiga_custom ;

unsigned char cia_set_irq(struct ciabase *base, unsigned char mask)
{
 unsigned char old;

 old = (base->icr_data |= base->cia->icr);
 if (mask & CIA_ICR_SETCLR)
  base->icr_data |= mask;
 else
  base->icr_data &= ~mask;
 if (base->icr_data & base->icr_mask)
  amiga_custom.intreq = IF_SETCLR | base->int_mask;
 return old & base->icr_mask;
}
