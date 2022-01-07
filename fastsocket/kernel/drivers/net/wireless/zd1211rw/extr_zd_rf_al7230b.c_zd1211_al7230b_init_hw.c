
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int const member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 int const ZD_CR203 ;
 struct zd_ioreq16 const** chan_rv ;
 struct zd_ioreq16 const* rv_init1 ;
 struct zd_ioreq16 const* rv_init2 ;
 struct zd_ioreq16 const* std_rv ;
 int zd_iowrite16_locked (struct zd_chip*,int,int const) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwritev_cr_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;

__attribute__((used)) static int zd1211_al7230b_init_hw(struct zd_rf *rf)
{
 int r;
 struct zd_chip *chip = zd_rf_to_chip(rf);



 static const struct zd_ioreq16 ioreqs_1[] = {

  { 148, 0x57 },
  { },

  { 152, 0x20 }, { 150, 0x40 }, { 149, 0x20 },
  { 144, 0x11 }, { 143, 0x3e }, { 142, 0x00 },
  { 137, 0x33 },

  { 174, 0x22 },
  { 173, 0x1a }, { 172, 0x09 }, { 171, 0x27 },
  { 170, 0x2b }, { 169, 0x2b }, { 162, 0x0a },


  { 159, 0xfc },
  { 178, 0x89 },

  { 151, 0x28 },
  { 144, 0x93 }, { 141, 0x30 },

  { 140, 0x3e },
  { 138, 0x24 }, { 137, 0x32 },

  { 136, 0x96 },
  { 135, 0x1e }, { 134, 0x58 }, { 133, 0x30 },
  { 132, 0x30 }, { 131, 0x0a }, { 130, 0x04 },
  { 129, 0x0a }, { 128, 0x28 },

  { 177, 0x02 },
  { 176, 0x13 }, { 175, 0x27 },

  { 174, 0x22 },

  { 173, 0x3f },
  { 172, 0x09 },

  { 171, 0x1f },
  { 170, 0x1f }, { 169, 0x1f }, { 168, 0x27 },
  { 167, 0x27 },

  { 166, 0x24 },

  { 165, 0x3f },

  { 164, 0xfa },
  { 163, 0xfc }, { 162, 0x10 }, { 161, 0x4f },
  { 160, 0x77 }, { 154, 0x88 },

  { 153, 0xa8 },

  { 146, 0x34 },

  { 145, 0x34 },


  { 147, 0x2f },
 };

 static const struct zd_ioreq16 ioreqs_2[] = {
  { 147, 0x3f },
  { 158, 0x14 }, { 157, 0x12 }, { 156, 0x10 },
  { 139, 0x38 }, { 155, 0xdf },
 };

 r = zd_iowrite16a_locked(chip, ioreqs_1, ARRAY_SIZE(ioreqs_1));
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

 r = zd_iowrite16a_locked(chip, ioreqs_2, ARRAY_SIZE(ioreqs_2));
 if (r)
  return r;

 r = zd_rfwritev_cr_locked(chip, rv_init2, ARRAY_SIZE(rv_init2));
 if (r)
  return r;

 r = zd_iowrite16_locked(chip, 0x06, ZD_CR203);
 if (r)
  return r;
 r = zd_iowrite16_locked(chip, 0x80, 148);
 if (r)
  return r;

 return 0;
}
