
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct cas {int block_dvma; int cas_flags; int rx_pause_off; int rx_pause_on; int page_size; int mtu_stride; scalar_t__ regs; TYPE_1__* dev; scalar_t__ init_block; scalar_t__* init_rxcs; scalar_t__* init_rxds; } ;
struct TYPE_2__ {int mtu; } ;


 int CAS_BASE (int ,int) ;
 int CAS_FLAG_REG_PLUS ;
 scalar_t__ CAS_HP_FIRMWARE ;
 int CAS_NCPUS ;
 int HP_CFG_NUM_CPU ;
 int HP_CFG_PARSE_EN ;
 int HP_CFG_SYN_INC_MASK ;
 int HP_CFG_TCP_THRESH ;
 int HP_TCP_THRESH_VAL ;
 int INTR_RX_BUF_UNAVAIL ;
 int INTR_RX_BUF_UNAVAIL_1 ;
 int INTR_RX_DONE ;
 int INTR_RX_DONE_ALT ;
 int MAX_RX_COMP_RINGS ;
 int N_RX_COMP_RINGS ;
 int N_RX_DESC_RINGS ;
 scalar_t__ REG_ALIAS_CLEAR ;
 scalar_t__ REG_HP_CFG ;
 scalar_t__ REG_INTR_STATUS_ALIAS ;
 scalar_t__ REG_PLUS_ALIASN_CLEAR (int) ;
 scalar_t__ REG_PLUS_INTRN_STATUS_ALIAS (int) ;
 scalar_t__ REG_PLUS_RX_AE1_THRESH ;
 scalar_t__ REG_PLUS_RX_CBN_HI (int) ;
 scalar_t__ REG_PLUS_RX_CBN_LOW (int) ;
 scalar_t__ REG_PLUS_RX_DB1_HI ;
 scalar_t__ REG_PLUS_RX_DB1_LOW ;
 scalar_t__ REG_PLUS_RX_KICK1 ;
 scalar_t__ REG_RX_AE_THRESH ;
 scalar_t__ REG_RX_BLANK ;
 scalar_t__ REG_RX_CB_HI ;
 scalar_t__ REG_RX_CB_LOW ;
 scalar_t__ REG_RX_CFG ;
 scalar_t__ REG_RX_CTRL_FIFO_ADDR ;
 scalar_t__ REG_RX_DB_HI ;
 scalar_t__ REG_RX_DB_LOW ;
 scalar_t__ REG_RX_IPP_FIFO_ADDR ;
 scalar_t__ REG_RX_KICK ;
 scalar_t__ REG_RX_PAGE_SIZE ;
 scalar_t__ REG_RX_PAUSE_THRESH ;
 scalar_t__ REG_RX_RED ;
 scalar_t__ REG_RX_TABLE_ADDR ;
 scalar_t__ REG_RX_TABLE_DATA_HI ;
 scalar_t__ REG_RX_TABLE_DATA_LOW ;
 scalar_t__ REG_RX_TABLE_DATA_MID ;
 int RX_AE1_THRESH_FREE ;
 int RX_AE_COMP_VAL ;
 int RX_AE_FREEN_VAL (int) ;
 int RX_AE_THRESH_COMP ;
 int RX_BLANK_INTR_PKT ;
 int RX_BLANK_INTR_PKT_VAL ;
 int RX_BLANK_INTR_TIME ;
 int RX_BLANK_INTR_TIME_VAL ;
 int RX_CFG_COMP_RING ;
 int RX_CFG_DESC_RING ;
 int RX_CFG_DESC_RING1 ;
 int RX_CFG_SWIVEL ;
 int RX_COMP_RINGN_INDEX (int ) ;
 int RX_DESC_RINGN_INDEX (int) ;
 int RX_DESC_RINGN_SIZE (int) ;
 int RX_PAGE_SIZE ;
 int RX_PAGE_SIZE_MTU_COUNT ;
 int RX_PAGE_SIZE_MTU_OFF ;
 int RX_PAGE_SIZE_MTU_STRIDE ;
 int RX_PAUSE_THRESH_OFF ;
 int RX_PAUSE_THRESH_ON ;
 int RX_PAUSE_THRESH_QUANTUM ;
 int RX_SWIVEL_OFF_VAL ;
 scalar_t__ cas_prog_null ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_init_rx_dma(struct cas *cp)
{
 u64 desc_dma = cp->block_dvma;
 u32 val;
 int i, size;


 val = CAS_BASE(RX_CFG_SWIVEL, RX_SWIVEL_OFF_VAL);
 val |= CAS_BASE(RX_CFG_DESC_RING, RX_DESC_RINGN_INDEX(0));
 val |= CAS_BASE(RX_CFG_COMP_RING, RX_COMP_RINGN_INDEX(0));
 if ((N_RX_DESC_RINGS > 1) &&
     (cp->cas_flags & CAS_FLAG_REG_PLUS))
  val |= CAS_BASE(RX_CFG_DESC_RING1, RX_DESC_RINGN_INDEX(1));
 writel(val, cp->regs + REG_RX_CFG);

 val = (unsigned long) cp->init_rxds[0] -
  (unsigned long) cp->init_block;
 writel((desc_dma + val) >> 32, cp->regs + REG_RX_DB_HI);
 writel((desc_dma + val) & 0xffffffff, cp->regs + REG_RX_DB_LOW);
 writel(RX_DESC_RINGN_SIZE(0) - 4, cp->regs + REG_RX_KICK);

 if (cp->cas_flags & CAS_FLAG_REG_PLUS) {



  val = (unsigned long) cp->init_rxds[1] -
   (unsigned long) cp->init_block;
  writel((desc_dma + val) >> 32, cp->regs + REG_PLUS_RX_DB1_HI);
  writel((desc_dma + val) & 0xffffffff, cp->regs +
         REG_PLUS_RX_DB1_LOW);
  writel(RX_DESC_RINGN_SIZE(1) - 4, cp->regs +
         REG_PLUS_RX_KICK1);
 }


 val = (unsigned long) cp->init_rxcs[0] -
  (unsigned long) cp->init_block;
 writel((desc_dma + val) >> 32, cp->regs + REG_RX_CB_HI);
 writel((desc_dma + val) & 0xffffffff, cp->regs + REG_RX_CB_LOW);

 if (cp->cas_flags & CAS_FLAG_REG_PLUS) {

  for (i = 1; i < MAX_RX_COMP_RINGS; i++) {
   val = (unsigned long) cp->init_rxcs[i] -
    (unsigned long) cp->init_block;
   writel((desc_dma + val) >> 32, cp->regs +
          REG_PLUS_RX_CBN_HI(i));
   writel((desc_dma + val) & 0xffffffff, cp->regs +
          REG_PLUS_RX_CBN_LOW(i));
  }
 }





 readl(cp->regs + REG_INTR_STATUS_ALIAS);
 writel(INTR_RX_DONE | INTR_RX_BUF_UNAVAIL, cp->regs + REG_ALIAS_CLEAR);
 if (cp->cas_flags & CAS_FLAG_REG_PLUS) {
  for (i = 1; i < N_RX_COMP_RINGS; i++)
   readl(cp->regs + REG_PLUS_INTRN_STATUS_ALIAS(i));


  if (N_RX_COMP_RINGS > 1)
   writel(INTR_RX_DONE_ALT | INTR_RX_BUF_UNAVAIL_1,
          cp->regs + REG_PLUS_ALIASN_CLEAR(1));

  for (i = 2; i < N_RX_COMP_RINGS; i++)
   writel(INTR_RX_DONE_ALT,
          cp->regs + REG_PLUS_ALIASN_CLEAR(i));
 }


 val = CAS_BASE(RX_PAUSE_THRESH_OFF,
   cp->rx_pause_off / RX_PAUSE_THRESH_QUANTUM);
 val |= CAS_BASE(RX_PAUSE_THRESH_ON,
   cp->rx_pause_on / RX_PAUSE_THRESH_QUANTUM);
 writel(val, cp->regs + REG_RX_PAUSE_THRESH);


 for (i = 0; i < 64; i++) {
  writel(i, cp->regs + REG_RX_TABLE_ADDR);
  writel(0x0, cp->regs + REG_RX_TABLE_DATA_LOW);
  writel(0x0, cp->regs + REG_RX_TABLE_DATA_MID);
  writel(0x0, cp->regs + REG_RX_TABLE_DATA_HI);
 }


 writel(0x0, cp->regs + REG_RX_CTRL_FIFO_ADDR);
 writel(0x0, cp->regs + REG_RX_IPP_FIFO_ADDR);







 writel(0x0, cp->regs + REG_RX_BLANK);
 val = CAS_BASE(RX_AE_THRESH_COMP, RX_AE_COMP_VAL);
 writel(val, cp->regs + REG_RX_AE_THRESH);
 if (cp->cas_flags & CAS_FLAG_REG_PLUS) {
  val = CAS_BASE(RX_AE1_THRESH_FREE, RX_AE_FREEN_VAL(1));
  writel(val, cp->regs + REG_PLUS_RX_AE1_THRESH);
 }




 writel(0x0, cp->regs + REG_RX_RED);


 val = 0;
 if (cp->page_size == 0x1000)
  val = 0x1;
 else if (cp->page_size == 0x2000)
  val = 0x2;
 else if (cp->page_size == 0x4000)
  val = 0x3;


 size = cp->dev->mtu + 64;
 if (size > cp->page_size)
  size = cp->page_size;

 if (size <= 0x400)
  i = 0x0;
 else if (size <= 0x800)
  i = 0x1;
 else if (size <= 0x1000)
  i = 0x2;
 else
  i = 0x3;

 cp->mtu_stride = 1 << (i + 10);
 val = CAS_BASE(RX_PAGE_SIZE, val);
 val |= CAS_BASE(RX_PAGE_SIZE_MTU_STRIDE, i);
 val |= CAS_BASE(RX_PAGE_SIZE_MTU_COUNT, cp->page_size >> (i + 10));
 val |= CAS_BASE(RX_PAGE_SIZE_MTU_OFF, 0x1);
 writel(val, cp->regs + REG_RX_PAGE_SIZE);


 if (CAS_HP_FIRMWARE == cas_prog_null)
  return;

 val = CAS_BASE(HP_CFG_NUM_CPU, CAS_NCPUS > 63 ? 0 : CAS_NCPUS);
 val |= HP_CFG_PARSE_EN | HP_CFG_SYN_INC_MASK;
 val |= CAS_BASE(HP_CFG_TCP_THRESH, HP_TCP_THRESH_VAL);
 writel(val, cp->regs + REG_HP_CFG);
}
