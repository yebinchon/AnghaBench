
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cyclades_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; scalar_t__ cts; } ;
struct cyclades_port {TYPE_1__* card; struct cyclades_icount icount; } ;
struct TYPE_2__ {int card_lock; } ;


 unsigned long TIOCM_CD ;
 unsigned long TIOCM_CTS ;
 unsigned long TIOCM_DSR ;
 unsigned long TIOCM_RNG ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cy_cflags_changed(struct cyclades_port *info, unsigned long arg,
  struct cyclades_icount *cprev)
{
 struct cyclades_icount cnow;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&info->card->card_lock, flags);
 cnow = info->icount;
 spin_unlock_irqrestore(&info->card->card_lock, flags);

 ret = ((arg & TIOCM_RNG) && (cnow.rng != cprev->rng)) ||
  ((arg & TIOCM_DSR) && (cnow.dsr != cprev->dsr)) ||
  ((arg & TIOCM_CD) && (cnow.dcd != cprev->dcd)) ||
  ((arg & TIOCM_CTS) && (cnow.cts != cprev->cts));

 *cprev = cnow;

 return ret;
}
