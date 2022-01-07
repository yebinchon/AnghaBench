
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ace_device {int dev; } ;


 int ACE_BUSMODE ;
 int ACE_CFGLBA ;
 int ACE_CTRL ;
 int ACE_ERROR ;
 int ACE_FATSTAT ;
 int ACE_MPULBA ;
 int ACE_SECCNTCMD ;
 int ACE_STATUS ;
 int ACE_VERSION ;
 int ace_in (struct ace_device*,int ) ;
 int ace_in32 (struct ace_device*,int ) ;
 int dev_info (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void ace_dump_regs(struct ace_device *ace)
{
 dev_info(ace->dev,
   "    ctrl:  %.8x  seccnt/cmd: %.4x      ver:%.4x\n"
   "    status:%.8x  mpu_lba:%.8x  busmode:%4x\n"
   "    error: %.8x  cfg_lba:%.8x  fatstat:%.4x\n",
   ace_in32(ace, ACE_CTRL),
   ace_in(ace, ACE_SECCNTCMD),
   ace_in(ace, ACE_VERSION),
   ace_in32(ace, ACE_STATUS),
   ace_in32(ace, ACE_MPULBA),
   ace_in(ace, ACE_BUSMODE),
   ace_in32(ace, ACE_ERROR),
   ace_in32(ace, ACE_CFGLBA), ace_in(ace, ACE_FATSTAT));
}
