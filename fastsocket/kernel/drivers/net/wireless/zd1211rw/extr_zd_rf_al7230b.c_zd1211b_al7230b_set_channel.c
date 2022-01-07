
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zd_rf {int dummy; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int ZD_CR240 ;
 int ZD_CR251 ;
 int ZD_CR9 ;
 int ** chan_rv ;
 int const* ioreqs_sw ;
 int const* std_rv ;
 int zd1211b_al7230b_finalize (struct zd_chip*) ;
 int zd_iowrite16_locked (struct zd_chip*,int,int ) ;
 int zd_iowrite16a_locked (struct zd_chip*,int const*,int) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwrite_cr_locked (struct zd_chip*,int) ;
 int zd_rfwritev_cr_locked (struct zd_chip*,int const*,int) ;

__attribute__((used)) static int zd1211b_al7230b_set_channel(struct zd_rf *rf, u8 channel)
{
 int r;
 const u32 *rv = chan_rv[channel-1];
 struct zd_chip *chip = zd_rf_to_chip(rf);

 r = zd_iowrite16_locked(chip, 0x57, ZD_CR240);
 if (r)
  return r;
 r = zd_iowrite16_locked(chip, 0xe4, ZD_CR9);
 if (r)
  return r;


 r = zd_iowrite16_locked(chip, 0x2f, ZD_CR251);
 if (r)
  return r;
 r = zd_rfwritev_cr_locked(chip, std_rv, ARRAY_SIZE(std_rv));
 if (r)
  return r;

 r = zd_rfwrite_cr_locked(chip, 0x3c9000);
 if (r)
  return r;
 r = zd_rfwrite_cr_locked(chip, 0xf15d58);
 if (r)
  return r;

 r = zd_iowrite16a_locked(chip, ioreqs_sw, ARRAY_SIZE(ioreqs_sw));
 if (r)
  return r;

 r = zd_rfwritev_cr_locked(chip, rv, 2);
 if (r)
  return r;

 r = zd_rfwrite_cr_locked(chip, 0x3c9000);
 if (r)
  return r;

 r = zd_iowrite16_locked(chip, 0x7f, ZD_CR251);
 if (r)
  return r;

 return zd1211b_al7230b_finalize(chip);
}
