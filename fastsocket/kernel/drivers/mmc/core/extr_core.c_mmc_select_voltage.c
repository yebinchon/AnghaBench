
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vdd; } ;
struct mmc_host {int ocr_avail; TYPE_1__ ios; } ;


 int ffs (int) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_set_ios (struct mmc_host*) ;
 int pr_warning (char*,int ) ;

u32 mmc_select_voltage(struct mmc_host *host, u32 ocr)
{
 int bit;

 ocr &= host->ocr_avail;

 bit = ffs(ocr);
 if (bit) {
  bit -= 1;

  ocr &= 3 << bit;

  host->ios.vdd = bit;
  mmc_set_ios(host);
 } else {
  pr_warning("%s: host doesn't support card's voltages\n",
    mmc_hostname(host));
  ocr = 0;
 }

 return ocr;
}
