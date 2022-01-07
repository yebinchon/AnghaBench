
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_ioreq16 {int member_1; int member_0; } ;
typedef struct zd_ioreq16 u32 ;
struct zd_rf {int dummy; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;



 struct zd_ioreq16** chan_rv ;
 struct zd_ioreq16 const* ioreqs_sw ;
 struct zd_ioreq16 const* std_rv ;
 int zd_iowrite16_locked (struct zd_chip*,int,int const) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwrite_cr_locked (struct zd_chip*,int) ;
 int zd_rfwritev_cr_locked (struct zd_chip*,struct zd_ioreq16 const*,int) ;

__attribute__((used)) static int zd1211_al7230b_set_channel(struct zd_rf *rf, u8 channel)
{
 int r;
 const u32 *rv = chan_rv[channel-1];
 struct zd_chip *chip = zd_rf_to_chip(rf);

 static const struct zd_ioreq16 ioreqs[] = {

  { 128, 0x3f },
  { 130, 0x06 }, { 129, 0x08 },
 };

 r = zd_iowrite16_locked(chip, 0x57, 129);
 if (r)
  return r;


 r = zd_iowrite16_locked(chip, 0x2f, 128);
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

 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
