
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek {int muted; int lock; int io; } ;


 int BU2614_FMES ;
 int BU2614_FMUN ;
 int BU2614_FREQ ;
 int BU2614_PORT ;
 int BU2614_STDF ;
 int BU2614_SWAL ;
 int BU2614_SWIN ;
 int BU2614_TEST ;
 int GEMTEK_MT ;
 int GEMTEK_PLL_OFF ;
 int SHORT_DELAY ;
 int gemtek_bu2614_set (struct gemtek*,int ,int ) ;
 int gemtek_bu2614_transmit (struct gemtek*) ;
 scalar_t__ hardmute ;
 int inb_p (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void gemtek_mute(struct gemtek *gt)
{
 int i;

 gt->muted = 1;

 if (hardmute) {

  gemtek_bu2614_set(gt, BU2614_PORT, 0);
  gemtek_bu2614_set(gt, BU2614_FMES, 0);
  gemtek_bu2614_set(gt, BU2614_SWIN, 0);
  gemtek_bu2614_set(gt, BU2614_SWAL, 0);
  gemtek_bu2614_set(gt, BU2614_FMUN, 0);
  gemtek_bu2614_set(gt, BU2614_TEST, 0);
  gemtek_bu2614_set(gt, BU2614_STDF, GEMTEK_PLL_OFF);
  gemtek_bu2614_set(gt, BU2614_FREQ, 0);
  gemtek_bu2614_transmit(gt);
  return;
 }

 mutex_lock(&gt->lock);


 i = inb_p(gt->io);

 outb_p((i >> 5) | GEMTEK_MT, gt->io);
 udelay(SHORT_DELAY);

 mutex_unlock(&gt->lock);
}
