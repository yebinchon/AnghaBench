
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek {unsigned long lastfreq; scalar_t__ muted; } ;


 int BU2614_FMES ;
 int BU2614_FMUN ;
 int BU2614_FREQ ;
 int BU2614_PORT ;
 int BU2614_STDF ;
 int BU2614_SWAL ;
 int BU2614_SWIN ;
 int BU2614_TEST ;
 int GEMTEK_HIGHFREQ ;
 int GEMTEK_LOWFREQ ;
 int GEMTEK_STDF_3_125_KHZ ;
 unsigned long clamp_val (unsigned long,int ,int ) ;
 int gemtek_bu2614_set (struct gemtek*,int ,int) ;
 int gemtek_bu2614_transmit (struct gemtek*) ;
 int gemtek_convfreq (unsigned long) ;
 scalar_t__ hardmute ;
 scalar_t__ keepmuted ;

__attribute__((used)) static void gemtek_setfreq(struct gemtek *gt, unsigned long freq)
{
 if (keepmuted && hardmute && gt->muted)
  return;

 freq = clamp_val(freq, GEMTEK_LOWFREQ, GEMTEK_HIGHFREQ);

 gt->lastfreq = freq;
 gt->muted = 0;

 gemtek_bu2614_set(gt, BU2614_PORT, 0);
 gemtek_bu2614_set(gt, BU2614_FMES, 0);
 gemtek_bu2614_set(gt, BU2614_SWIN, 0);
 gemtek_bu2614_set(gt, BU2614_SWAL, 0);
 gemtek_bu2614_set(gt, BU2614_FMUN, 1);
 gemtek_bu2614_set(gt, BU2614_TEST, 0);

 gemtek_bu2614_set(gt, BU2614_STDF, GEMTEK_STDF_3_125_KHZ);
 gemtek_bu2614_set(gt, BU2614_FREQ, gemtek_convfreq(freq));

 gemtek_bu2614_transmit(gt);
}
