
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct uart_sunsab_port {int cached_mode; int cached_pvr; int cached_dafo; int cached_ebrg; TYPE_3__* regs; int irqflags; } ;
struct TYPE_5__ {int ccr2; int pvr; int mode; } ;
struct TYPE_4__ {int bgr; int dafo; } ;
struct TYPE_6__ {TYPE_2__ rw; TYPE_1__ w; } ;


 int SAB82532_REGS_PENDING ;
 int clear_bit (int ,int *) ;
 int readb (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void sunsab_tx_idle(struct uart_sunsab_port *up)
{
 if (test_bit(SAB82532_REGS_PENDING, &up->irqflags)) {
  u8 tmp;

  clear_bit(SAB82532_REGS_PENDING, &up->irqflags);
  writeb(up->cached_mode, &up->regs->rw.mode);
  writeb(up->cached_pvr, &up->regs->rw.pvr);
  writeb(up->cached_dafo, &up->regs->w.dafo);

  writeb(up->cached_ebrg & 0xff, &up->regs->w.bgr);
  tmp = readb(&up->regs->rw.ccr2);
  tmp &= ~0xc0;
  tmp |= (up->cached_ebrg >> 2) & 0xc0;
  writeb(tmp, &up->regs->rw.ccr2);
 }
}
