
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int BaseAddress; int trans_method; int clock; } ;
typedef TYPE_1__ nsp32_hw_data ;


 int ACK_WIDTH ;
 unsigned long AUTOSEL_TIMING_SEL ;
 unsigned long BMREQ_NEGATE_TIMING_SEL ;
 unsigned long BMSTOP_CHANGE2_NONDATA_PHASE ;
 int BM_CNT ;
 int BM_CYCLE ;
 int BPWR ;
 int CFG_LATE_CACHE ;
 int CLOCK_DIV ;
 unsigned long DELAYED_BMSTART ;
 int EXT_PORT ;
 int EXT_PORT_DDR ;
 int FIFO_EMPTY_SHLD_COUNT ;
 int FIFO_FULL_SHLD_COUNT ;
 unsigned long IRQSELECT_AUTO_SCSI_SEQ_IRQ ;
 unsigned long IRQSELECT_FIFO_SHLD_IRQ ;
 unsigned long IRQSELECT_MASTER_ABORT_IRQ ;
 unsigned long IRQSELECT_PHASE_CHANGE_IRQ ;
 unsigned long IRQSELECT_RESELECT_IRQ ;
 unsigned long IRQSELECT_SCSIRESET_IRQ ;
 unsigned long IRQSELECT_TARGET_ABORT_IRQ ;
 unsigned long IRQSELECT_TIMER_IRQ ;
 unsigned short IRQSTATUS_ANY_IRQ ;
 int IRQ_CONTROL ;
 int IRQ_CONTROL_ALL_IRQ_MASK ;
 int IRQ_SELECT ;
 int IRQ_STATUS ;
 int KERN_INFO ;
 int LED_OFF ;
 unsigned long MASTER_TERMINATION_SELECT ;
 int MEMRD_CMD1 ;
 int MISC_WR ;
 int NSP32_DEBUG_INIT ;
 int NSP32_TRANSFER_BUSMASTER ;
 int NSP32_TRANSFER_MMIO ;
 int NSP32_TRANSFER_PIO ;
 int PARITY_CONTROL ;
 unsigned long SCSI_DIRECTION_DETECTOR_SELECT ;
 int SCSI_EXECUTE_PHASE ;
 int SEL_TIMEOUT_TIME ;
 int SEL_TIME_OUT ;
 unsigned char SENSE ;
 int SGT_AUTO_PARA_MEMED_CMD ;
 int SYNC_REG ;
 int TERM_PWR_CONTROL ;
 int TIMER_SET ;
 int TIMER_STOP ;
 int TRANSFER_CONTROL ;
 int TRUE ;
 int nsp32_dbg (int ,char*,...) ;
 unsigned char nsp32_index_read1 (unsigned int,int ) ;
 unsigned long nsp32_index_read4 (unsigned int,int ) ;
 int nsp32_index_write1 (unsigned int,int ,int) ;
 int nsp32_index_write2 (unsigned int,int ,unsigned long) ;
 int nsp32_msg (int ,char*) ;
 unsigned short nsp32_read2 (unsigned int,int ) ;
 int nsp32_write1 (unsigned int,int ,int ) ;
 int nsp32_write2 (unsigned int,int ,int ) ;
 int nsp32_write4 (unsigned int,int ,int ) ;

__attribute__((used)) static int nsp32hw_init(nsp32_hw_data *data)
{
 unsigned int base = data->BaseAddress;
 unsigned short irq_stat;
 unsigned long lc_reg;
 unsigned char power;

 lc_reg = nsp32_index_read4(base, CFG_LATE_CACHE);
 if ((lc_reg & 0xff00) == 0) {
  lc_reg |= (0x20 << 8);
  nsp32_index_write2(base, CFG_LATE_CACHE, lc_reg & 0xffff);
 }

 nsp32_write2(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);
 nsp32_write2(base, TRANSFER_CONTROL, 0);
 nsp32_write4(base, BM_CNT, 0);
 nsp32_write2(base, SCSI_EXECUTE_PHASE, 0);

 do {
  irq_stat = nsp32_read2(base, IRQ_STATUS);
  nsp32_dbg(NSP32_DEBUG_INIT, "irq_stat 0x%x", irq_stat);
 } while (irq_stat & IRQSTATUS_ANY_IRQ);





 if ((data->trans_method & NSP32_TRANSFER_PIO) ||
     (data->trans_method & NSP32_TRANSFER_MMIO)) {
  nsp32_index_write1(base, FIFO_FULL_SHLD_COUNT, 0x40);
  nsp32_index_write1(base, FIFO_EMPTY_SHLD_COUNT, 0x40);
 } else if (data->trans_method & NSP32_TRANSFER_BUSMASTER) {
  nsp32_index_write1(base, FIFO_FULL_SHLD_COUNT, 0x10);
  nsp32_index_write1(base, FIFO_EMPTY_SHLD_COUNT, 0x60);
 } else {
  nsp32_dbg(NSP32_DEBUG_INIT, "unknown transfer mode");
 }

 nsp32_dbg(NSP32_DEBUG_INIT, "full 0x%x emp 0x%x",
    nsp32_index_read1(base, FIFO_FULL_SHLD_COUNT),
    nsp32_index_read1(base, FIFO_EMPTY_SHLD_COUNT));

 nsp32_index_write1(base, CLOCK_DIV, data->clock);
 nsp32_index_write1(base, BM_CYCLE, MEMRD_CMD1 | SGT_AUTO_PARA_MEMED_CMD);
 nsp32_write1(base, PARITY_CONTROL, 0);
 nsp32_index_write2(base, MISC_WR,
      (SCSI_DIRECTION_DETECTOR_SELECT |
       DELAYED_BMSTART |
       MASTER_TERMINATION_SELECT |
       BMREQ_NEGATE_TIMING_SEL |
       AUTOSEL_TIMING_SEL |
       BMSTOP_CHANGE2_NONDATA_PHASE));

 nsp32_index_write1(base, TERM_PWR_CONTROL, 0);
 power = nsp32_index_read1(base, TERM_PWR_CONTROL);
 if (!(power & SENSE)) {
  nsp32_msg(KERN_INFO, "term power on");
  nsp32_index_write1(base, TERM_PWR_CONTROL, BPWR);
 }

 nsp32_write2(base, TIMER_SET, TIMER_STOP);
 nsp32_write2(base, TIMER_SET, TIMER_STOP);

 nsp32_write1(base, SYNC_REG, 0);
 nsp32_write1(base, ACK_WIDTH, 0);
 nsp32_write2(base, SEL_TIME_OUT, SEL_TIMEOUT_TIME);





 nsp32_index_write2(base, IRQ_SELECT, IRQSELECT_TIMER_IRQ |
                        IRQSELECT_SCSIRESET_IRQ |
                        IRQSELECT_FIFO_SHLD_IRQ |
                        IRQSELECT_RESELECT_IRQ |
                        IRQSELECT_PHASE_CHANGE_IRQ |
                        IRQSELECT_AUTO_SCSI_SEQ_IRQ |

                        IRQSELECT_TARGET_ABORT_IRQ |
                        IRQSELECT_MASTER_ABORT_IRQ );
 nsp32_write2(base, IRQ_CONTROL, 0);


 nsp32_index_write1(base, EXT_PORT_DDR, LED_OFF);
 nsp32_index_write1(base, EXT_PORT, LED_OFF);

 return TRUE;
}
