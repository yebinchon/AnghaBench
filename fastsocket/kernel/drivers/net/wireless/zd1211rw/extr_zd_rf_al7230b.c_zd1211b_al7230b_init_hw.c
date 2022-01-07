
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int const member_0; } ;
struct zd_chip {scalar_t__ new_phy_layout; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 struct zd_ioreq16 const** chan_rv ;
 struct zd_ioreq16 const* rv_init1 ;
 struct zd_ioreq16 const* rv_init2 ;
 struct zd_ioreq16 const* std_rv ;
 int zd1211b_al7230b_finalize (struct zd_chip*) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwritev_cr_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;

__attribute__((used)) static int zd1211b_al7230b_init_hw(struct zd_rf *rf)
{
 int r;
 struct zd_chip *chip = zd_rf_to_chip(rf);

 static const struct zd_ioreq16 ioreqs_1[] = {
  { 163, 0x57 }, { 133, 0x9 },
  { },
  { 203, 0x8b }, { 169, 0x20 },
  { 167, 0x2B },
  { 166, 0x10 },
  { 165, 0x40 }, { 164, 0x20 }, { 159, 0x93 },
  { 158, 0x3e }, { 157, 0x00 },
  { 156, 0x28 },
  { 155, 0x30 },
  { 154, 0x3e },
  { 152, 0x24 }, { 151, 0x32 },
  { 150, 0x99 },
  { 149, 0x1e },


  { 148, 0x00 }, { 147, 0x00 }, { 146, 0x01 },
  { 145, 0x80 }, { 144, 0x7e }, { 143, 0x00 },
  { 142, 0x00 }, { 141, 0x00 }, { 140, 0x00 },
  { 139, 0x28 },

  { 138, 0x58 }, { 137, 0x30 }, { 136, 0x30 },
  { 135, 0x0A }, { 134, 0x04 },
  { 132, 0x58 },
  { 131, 0x00 },
  { 130, 0x0a },
  { 129, 0x8d },
  { 128, 0x00 }, { 202, 0x02 }, { 201, 0x13 },
  { 200, 0x27 },
  { 199, 0x20 },
  { 197, 0x13 },
  { 194, 0x1f },
 };

 static const struct zd_ioreq16 ioreqs_new_phy[] = {
  { 198, 0x28 },
  { 196, 0x1f },
  { 195, 0x1f },
  { 190, 0x2a }, { 188, 0xfa }, { 187, 0x12 },
  { 185, 0x6c },
 };

 static const struct zd_ioreq16 ioreqs_old_phy[] = {
  { 198, 0x24 },
  { 196, 0x13 },
  { 195, 0x13 },
  { 190, 0x24 }, { 188, 0xfc }, { 187, 0x11 },
  { 185, 0x6a },
 };

 static const struct zd_ioreq16 ioreqs_2[] = {
  { 193, 0x27 }, { 192, 0x27 }, { 191, 0x24 },
  { 189, 0xfa }, { 186, 0x4f },
  { 184, 0xfc },
  { 183, 0x57 },
  { 182, 0xad },
  { 181, 0x6c },
  { 180, 0x03 },
  { 177, 0x10 },
  { 176, 0x00 },
  { 174, 0x50 },
  { 173, 0xa8 },
  { 172, 0xac },
  { 171, 0x40 },
  { 170, 0x40 },
  { 168, 0x1a },
  { 161, 0x34 }, { 160, 0x34 },
  { 162, 0x2f },
 };

 static const struct zd_ioreq16 ioreqs_3[] = {
  { 162, 0x7f },
  { 179, 0x14 }, { 178, 0x12 }, { 177, 0x10 },
  { 153, 0x38 }, { 175, 0xdf },
 };

 r = zd_iowrite16a_locked(chip, ioreqs_1, ARRAY_SIZE(ioreqs_1));
 if (r)
  return r;

 if (chip->new_phy_layout)
  r = zd_iowrite16a_locked(chip, ioreqs_new_phy,
   ARRAY_SIZE(ioreqs_new_phy));
 else
  r = zd_iowrite16a_locked(chip, ioreqs_old_phy,
   ARRAY_SIZE(ioreqs_old_phy));
 if (r)
  return r;

 r = zd_iowrite16a_locked(chip, ioreqs_2, ARRAY_SIZE(ioreqs_2));
 if (r)
  return r;

 r = zd_rfwritev_cr_locked(chip, chan_rv[0], ARRAY_SIZE(chan_rv[0]));
 if (r)
  return r;

 r = zd_rfwritev_cr_locked(chip, std_rv, ARRAY_SIZE(std_rv));
 if (r)
  return r;

 r = zd_rfwritev_cr_locked(chip, rv_init1, ARRAY_SIZE(rv_init1));
 if (r)
  return r;

 r = zd_iowrite16a_locked(chip, ioreqs_3, ARRAY_SIZE(ioreqs_3));
 if (r)
  return r;

 r = zd_rfwritev_cr_locked(chip, rv_init2, ARRAY_SIZE(rv_init2));
 if (r)
  return r;

 return zd1211b_al7230b_finalize(chip);
}
