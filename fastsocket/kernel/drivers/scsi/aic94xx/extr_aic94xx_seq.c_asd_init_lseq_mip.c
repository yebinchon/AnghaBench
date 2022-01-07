
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct asd_ha_struct {int dummy; } ;


 int ASD_DEV_PRESENT_TIMEOUT ;
 int ASD_NOTIFY_ENABLE_SPINUP ;
 int ASD_ONE_MILLISEC_TIMEOUT ;
 int ASD_RCV_FIS_TIMEOUT ;
 int ASD_SATA_INTERLOCK_TIMEOUT ;
 int ASD_SMP_RCV_TIMEOUT ;
 int ASD_SRST_ASSERT_TIMEOUT ;
 int ASD_STP_SHUTDOWN_TIMEOUT ;
 int ASD_TEN_MILLISEC_TIMEOUT ;
 scalar_t__ LmSEQ_ATA_SCR_REGS (int ) ;
 int LmSEQ_CONCTL (int ) ;
 int LmSEQ_CONNECTION_MODES (int ) ;
 scalar_t__ LmSEQ_CONNECTION_STATE (int ) ;
 int LmSEQ_CONSTAT (int ) ;
 scalar_t__ LmSEQ_DEV_PRES_TMR_TOUT_CONST (int ) ;
 int LmSEQ_EMPTY_BUFS_AVAIL (int ) ;
 int LmSEQ_EMPTY_SCB_HEAD (int ) ;
 int LmSEQ_EMPTY_SCB_OPCD0 (int ) ;
 int LmSEQ_EMPTY_SCB_OPCD1 (int ) ;
 int LmSEQ_EMPTY_SCB_OPCD2 (int ) ;
 int LmSEQ_EMPTY_SCB_OPCD3 (int ) ;
 int LmSEQ_EMPTY_SCB_PTR0 (int ) ;
 int LmSEQ_EMPTY_SCB_PTR1 (int ) ;
 int LmSEQ_EMPTY_SCB_PTR2 (int ) ;
 int LmSEQ_EMPTY_SCB_PTR3 (int ) ;
 int LmSEQ_EMPTY_SCB_TAIL (int ) ;
 int LmSEQ_EST_NEXUS_BUF_AVAIL (int ) ;
 int LmSEQ_EST_NEXUS_SCBPTR0 (int ) ;
 int LmSEQ_EST_NEXUS_SCBPTR1 (int ) ;
 int LmSEQ_EST_NEXUS_SCBPTR2 (int ) ;
 int LmSEQ_EST_NEXUS_SCBPTR3 (int ) ;
 int LmSEQ_EST_NEXUS_SCB_HEAD (int ) ;
 int LmSEQ_EST_NEXUS_SCB_OPCODE0 (int ) ;
 int LmSEQ_EST_NEXUS_SCB_OPCODE1 (int ) ;
 int LmSEQ_EST_NEXUS_SCB_OPCODE2 (int ) ;
 int LmSEQ_EST_NEXUS_SCB_OPCODE3 (int ) ;
 int LmSEQ_EST_NEXUS_SCB_TAIL (int ) ;
 int LmSEQ_ISR_SAVE_DINDEX (int ) ;
 int LmSEQ_ISR_SAVE_SINDEX (int ) ;
 int LmSEQ_LINK_NUMBER (int ) ;
 scalar_t__ LmSEQ_ONE_MILLISEC_TIMEOUT (int ) ;
 int LmSEQ_Q_TGTXFR_HEAD (int ) ;
 int LmSEQ_Q_TGTXFR_TAIL (int ) ;
 scalar_t__ LmSEQ_RCV_FIS_TIMEOUT (int ) ;
 scalar_t__ LmSEQ_REG0_ISR (int ) ;
 int LmSEQ_REG1_ISR (int ) ;
 int LmSEQ_REG2_ISR (int ) ;
 int LmSEQ_REG3_ISR (int ) ;
 scalar_t__ LmSEQ_SATA_INTERLOCK_TIMEOUT (int ) ;
 int LmSEQ_SCRATCH_FLAGS (int ) ;
 scalar_t__ LmSEQ_SMP_RCV_TIMEOUT (int ) ;
 scalar_t__ LmSEQ_SRST_ASSERT_TIMEOUT (int ) ;
 scalar_t__ LmSEQ_STP_SHUTDOWN_TIMEOUT (int ) ;
 scalar_t__ LmSEQ_TEN_MS_COMINIT_TIMEOUT (int ) ;
 scalar_t__ LmSEQ_TIMEOUT_CONST (int ) ;
 int asd_write_reg_byte (struct asd_ha_struct*,int ,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,scalar_t__,int) ;
 int asd_write_reg_word (struct asd_ha_struct*,int ,int) ;

__attribute__((used)) static void asd_init_lseq_mip(struct asd_ha_struct *asd_ha, u8 lseq)
{
 int i;


 asd_write_reg_word(asd_ha, LmSEQ_Q_TGTXFR_HEAD(lseq), 0xFFFF);
 asd_write_reg_word(asd_ha, LmSEQ_Q_TGTXFR_TAIL(lseq), 0xFFFF);
 asd_write_reg_byte(asd_ha, LmSEQ_LINK_NUMBER(lseq), lseq);
 asd_write_reg_byte(asd_ha, LmSEQ_SCRATCH_FLAGS(lseq),
      ASD_NOTIFY_ENABLE_SPINUP);
 asd_write_reg_dword(asd_ha, LmSEQ_CONNECTION_STATE(lseq),0x08000000);
 asd_write_reg_word(asd_ha, LmSEQ_CONCTL(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_CONSTAT(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_CONNECTION_MODES(lseq), 0);
 asd_write_reg_word(asd_ha, LmSEQ_REG1_ISR(lseq), 0);
 asd_write_reg_word(asd_ha, LmSEQ_REG2_ISR(lseq), 0);
 asd_write_reg_word(asd_ha, LmSEQ_REG3_ISR(lseq), 0);
 asd_write_reg_dword(asd_ha, LmSEQ_REG0_ISR(lseq), 0);
 asd_write_reg_dword(asd_ha, LmSEQ_REG0_ISR(lseq)+4, 0);


 asd_write_reg_word(asd_ha, LmSEQ_EST_NEXUS_SCBPTR0(lseq), 0xFFFF);
 asd_write_reg_word(asd_ha, LmSEQ_EST_NEXUS_SCBPTR1(lseq), 0xFFFF);
 asd_write_reg_word(asd_ha, LmSEQ_EST_NEXUS_SCBPTR2(lseq), 0xFFFF);
 asd_write_reg_word(asd_ha, LmSEQ_EST_NEXUS_SCBPTR3(lseq), 0xFFFF);
 asd_write_reg_byte(asd_ha, LmSEQ_EST_NEXUS_SCB_OPCODE0(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EST_NEXUS_SCB_OPCODE1(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EST_NEXUS_SCB_OPCODE2(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EST_NEXUS_SCB_OPCODE3(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EST_NEXUS_SCB_HEAD(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EST_NEXUS_SCB_TAIL(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EST_NEXUS_BUF_AVAIL(lseq), 0);
 asd_write_reg_dword(asd_ha, LmSEQ_TIMEOUT_CONST(lseq), 0);
 asd_write_reg_word(asd_ha, LmSEQ_ISR_SAVE_SINDEX(lseq), 0);
 asd_write_reg_word(asd_ha, LmSEQ_ISR_SAVE_DINDEX(lseq), 0);


 asd_write_reg_word(asd_ha, LmSEQ_EMPTY_SCB_PTR0(lseq), 0xFFFF);
 asd_write_reg_word(asd_ha, LmSEQ_EMPTY_SCB_PTR1(lseq), 0xFFFF);
 asd_write_reg_word(asd_ha, LmSEQ_EMPTY_SCB_PTR2(lseq), 0xFFFF);
 asd_write_reg_word(asd_ha, LmSEQ_EMPTY_SCB_PTR3(lseq), 0xFFFF);
 asd_write_reg_byte(asd_ha, LmSEQ_EMPTY_SCB_OPCD0(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EMPTY_SCB_OPCD1(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EMPTY_SCB_OPCD2(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EMPTY_SCB_OPCD3(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EMPTY_SCB_HEAD(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EMPTY_SCB_TAIL(lseq), 0);
 asd_write_reg_byte(asd_ha, LmSEQ_EMPTY_BUFS_AVAIL(lseq), 0);
 for (i = 0; i < 12; i += 4)
  asd_write_reg_dword(asd_ha, LmSEQ_ATA_SCR_REGS(lseq) + i, 0);




 asd_write_reg_dword(asd_ha, LmSEQ_DEV_PRES_TMR_TOUT_CONST(lseq),
       ASD_DEV_PRESENT_TIMEOUT);


 asd_write_reg_dword(asd_ha, LmSEQ_SATA_INTERLOCK_TIMEOUT(lseq),
       ASD_SATA_INTERLOCK_TIMEOUT);



 asd_write_reg_dword(asd_ha, LmSEQ_STP_SHUTDOWN_TIMEOUT(lseq),
       ASD_STP_SHUTDOWN_TIMEOUT);

 asd_write_reg_dword(asd_ha, LmSEQ_SRST_ASSERT_TIMEOUT(lseq),
       ASD_SRST_ASSERT_TIMEOUT);

 asd_write_reg_dword(asd_ha, LmSEQ_RCV_FIS_TIMEOUT(lseq),
       ASD_RCV_FIS_TIMEOUT);

 asd_write_reg_dword(asd_ha, LmSEQ_ONE_MILLISEC_TIMEOUT(lseq),
       ASD_ONE_MILLISEC_TIMEOUT);


 asd_write_reg_dword(asd_ha, LmSEQ_TEN_MS_COMINIT_TIMEOUT(lseq),
       ASD_TEN_MILLISEC_TIMEOUT);

 asd_write_reg_dword(asd_ha, LmSEQ_SMP_RCV_TIMEOUT(lseq),
       ASD_SMP_RCV_TIMEOUT);
}
