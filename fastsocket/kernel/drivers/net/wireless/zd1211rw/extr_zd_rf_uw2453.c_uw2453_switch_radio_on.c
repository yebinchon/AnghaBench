
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int value; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16*) ;
 int RF_RV_BITS ;
 int UW2453_REGWRITE (int ,int) ;
 int ZD_CR11 ;
 int ZD_CR251 ;
 scalar_t__ zd_chip_is_zd1211b (struct zd_chip*) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwrite_locked (struct zd_chip*,int ,int ) ;

__attribute__((used)) static int uw2453_switch_radio_on(struct zd_rf *rf)
{
 int r;
 struct zd_chip *chip = zd_rf_to_chip(rf);
 struct zd_ioreq16 ioreqs[] = {
  { ZD_CR11, 0x00 }, { ZD_CR251, 0x3f },
 };


 r = zd_rfwrite_locked(chip, UW2453_REGWRITE(0, 0x25f94), RF_RV_BITS);
 if (r)
  return r;

 if (zd_chip_is_zd1211b(chip))
  ioreqs[1].value = 0x7f;

 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
