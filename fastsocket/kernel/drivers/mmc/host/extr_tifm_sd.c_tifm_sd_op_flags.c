
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int dummy; } ;


 int BUG () ;
 unsigned int TIFM_MMCSD_CMD_AC ;
 unsigned int TIFM_MMCSD_CMD_ADTC ;
 unsigned int TIFM_MMCSD_CMD_BC ;
 unsigned int TIFM_MMCSD_CMD_BCR ;
 unsigned int TIFM_MMCSD_RSP_BUSY ;
 unsigned int TIFM_MMCSD_RSP_R0 ;
 unsigned int TIFM_MMCSD_RSP_R1 ;
 unsigned int TIFM_MMCSD_RSP_R2 ;
 unsigned int TIFM_MMCSD_RSP_R3 ;
 int mmc_cmd_type (struct mmc_command*) ;
 int mmc_resp_type (struct mmc_command*) ;

__attribute__((used)) static unsigned int tifm_sd_op_flags(struct mmc_command *cmd)
{
 unsigned int rc = 0;

 switch (mmc_resp_type(cmd)) {
 case 132:
  rc |= TIFM_MMCSD_RSP_R0;
  break;
 case 130:
  rc |= TIFM_MMCSD_RSP_BUSY;
 case 131:
  rc |= TIFM_MMCSD_RSP_R1;
  break;
 case 129:
  rc |= TIFM_MMCSD_RSP_R2;
  break;
 case 128:
  rc |= TIFM_MMCSD_RSP_R3;
  break;
 default:
  BUG();
 }

 switch (mmc_cmd_type(cmd)) {
 case 134:
  rc |= TIFM_MMCSD_CMD_BC;
  break;
 case 133:
  rc |= TIFM_MMCSD_CMD_BCR;
  break;
 case 136:
  rc |= TIFM_MMCSD_CMD_AC;
  break;
 case 135:
  rc |= TIFM_MMCSD_CMD_ADTC;
  break;
 default:
  BUG();
 }
 return rc;
}
