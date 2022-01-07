
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SCOOP_CPR ;
 int SPITZ_PWR_CF ;
 int spitz_card_pwr_ctrl (int ,unsigned short) ;
 int write_scoop_reg (struct device*,int ,unsigned short) ;

__attribute__((used)) static void spitz_pcmcia_pwr(struct device *scoop, unsigned short cpr, int nr)
{

 if (nr == 0)
  spitz_card_pwr_ctrl(SPITZ_PWR_CF, cpr);
 else
  write_scoop_reg(scoop, SCOOP_CPR, cpr);
}
