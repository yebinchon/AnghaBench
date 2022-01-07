
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ushort ;
typedef int uchar ;
struct TYPE_6__ {scalar_t__ chip_type; scalar_t__ err_code; int iop_base; } ;
typedef int AdvPortAddr ;
typedef TYPE_1__ ADV_DVC_VAR ;


 scalar_t__ ADV_CHIP_ASC38C0800 ;
 scalar_t__ ADV_CHIP_ASC38C1600 ;
 int ADV_CTRL_REG_CMD_RESET ;
 int ADV_CTRL_REG_CMD_WR_IO_REG ;
 int ADV_FALSE ;
 int ADV_MAX_TID ;
 int ADV_RISC_CSR_STOP ;
 int ADV_TRUE ;
 int ASC_MC_BIOS_SIGNATURE ;
 scalar_t__ ASC_MC_NUMBER_OF_MAX_CMD ;
 int ASC_MC_PPR_ABLE ;
 int ASC_MC_SDTR_ABLE ;
 int ASC_MC_TAGQNG_ABLE ;
 int ASC_MC_WDTR_ABLE ;
 int AdvInitAsc3550Driver (TYPE_1__*) ;
 int AdvInitAsc38C0800Driver (TYPE_1__*) ;
 int AdvInitAsc38C1600Driver (TYPE_1__*) ;
 int AdvReadByteLram (int ,scalar_t__,int) ;
 int AdvReadWordLram (int ,int ,scalar_t__) ;
 int AdvWriteByteLram (int ,scalar_t__,int) ;
 int AdvWriteWordLram (int ,int ,scalar_t__) ;
 int AdvWriteWordRegister (int ,int ,int ) ;
 int IOPW_CTRL_REG ;
 int IOPW_RISC_CSR ;
 int mdelay (int) ;

__attribute__((used)) static int AdvResetChipAndSB(ADV_DVC_VAR *asc_dvc)
{
 int status;
 ushort wdtr_able, sdtr_able, tagqng_able;
 ushort ppr_able = 0;
 uchar tid, max_cmd[ADV_MAX_TID + 1];
 AdvPortAddr iop_base;
 ushort bios_sig;

 iop_base = asc_dvc->iop_base;




 AdvReadWordLram(iop_base, ASC_MC_WDTR_ABLE, wdtr_able);
 AdvReadWordLram(iop_base, ASC_MC_SDTR_ABLE, sdtr_able);
 if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {
  AdvReadWordLram(iop_base, ASC_MC_PPR_ABLE, ppr_able);
 }
 AdvReadWordLram(iop_base, ASC_MC_TAGQNG_ABLE, tagqng_able);
 for (tid = 0; tid <= ADV_MAX_TID; tid++) {
  AdvReadByteLram(iop_base, ASC_MC_NUMBER_OF_MAX_CMD + tid,
    max_cmd[tid]);
 }







 AdvReadWordLram(iop_base, ASC_MC_BIOS_SIGNATURE, bios_sig);
 AdvWriteWordLram(iop_base, ASC_MC_BIOS_SIGNATURE, 0);




 AdvWriteWordRegister(iop_base, IOPW_RISC_CSR, ADV_RISC_CSR_STOP);
 AdvWriteWordRegister(iop_base, IOPW_CTRL_REG, ADV_CTRL_REG_CMD_RESET);
 mdelay(100);
 AdvWriteWordRegister(iop_base, IOPW_CTRL_REG,
        ADV_CTRL_REG_CMD_WR_IO_REG);





 asc_dvc->err_code = 0;
 if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {
  status = AdvInitAsc38C1600Driver(asc_dvc);
 } else if (asc_dvc->chip_type == ADV_CHIP_ASC38C0800) {
  status = AdvInitAsc38C0800Driver(asc_dvc);
 } else {
  status = AdvInitAsc3550Driver(asc_dvc);
 }


 if (status == 0) {
  status = ADV_TRUE;
 } else {
  status = ADV_FALSE;
 }




 AdvWriteWordLram(iop_base, ASC_MC_BIOS_SIGNATURE, bios_sig);




 AdvWriteWordLram(iop_base, ASC_MC_WDTR_ABLE, wdtr_able);
 AdvWriteWordLram(iop_base, ASC_MC_SDTR_ABLE, sdtr_able);
 if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {
  AdvWriteWordLram(iop_base, ASC_MC_PPR_ABLE, ppr_able);
 }
 AdvWriteWordLram(iop_base, ASC_MC_TAGQNG_ABLE, tagqng_able);
 for (tid = 0; tid <= ADV_MAX_TID; tid++) {
  AdvWriteByteLram(iop_base, ASC_MC_NUMBER_OF_MAX_CMD + tid,
     max_cmd[tid]);
 }

 return status;
}
