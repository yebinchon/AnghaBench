
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;


 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

__attribute__((used)) static int zd1211b_al7230b_switch_radio_on(struct zd_rf *rf)
{
 struct zd_chip *chip = zd_rf_to_chip(rf);
 static const struct zd_ioreq16 ioreqs[] = {
  { 129, 0x00 },
  { 128, 0x7f },
 };

 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
