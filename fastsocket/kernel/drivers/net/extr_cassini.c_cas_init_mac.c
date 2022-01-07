
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cas {int cas_flags; int mac_rx_cfg; scalar_t__ regs; int * stat_lock; scalar_t__ crc_size; TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;


 int CAS_BASE (int ,int) ;
 int CAS_FLAG_SATURN ;
 int CAS_FLAG_TARGET_ABORT ;
 int CAS_MAX_MTU ;
 int CAWR_RR_DIS ;
 int ETH_HLEN ;
 int ETH_ZLEN ;
 int INF_BURST_EN ;
 int MAC_FRAMESIZE_MAX_BURST ;
 int MAC_FRAMESIZE_MAX_FRAME ;
 int MAC_RX_FRAME_RECV ;
 int MAC_TX_FRAME_XMIT ;
 size_t N_TX_RINGS ;
 scalar_t__ REG_CAWR ;
 scalar_t__ REG_INF_BURST ;
 scalar_t__ REG_MAC_ADDRN (int) ;
 scalar_t__ REG_MAC_ADDR_FILTER0 ;
 scalar_t__ REG_MAC_ADDR_FILTER0_MASK ;
 scalar_t__ REG_MAC_ADDR_FILTER1 ;
 scalar_t__ REG_MAC_ADDR_FILTER2 ;
 scalar_t__ REG_MAC_ADDR_FILTER2_1_MASK ;
 scalar_t__ REG_MAC_ATTEMPT_LIMIT ;
 scalar_t__ REG_MAC_CTRL_MASK ;
 scalar_t__ REG_MAC_CTRL_TYPE ;
 scalar_t__ REG_MAC_FRAMESIZE_MAX ;
 scalar_t__ REG_MAC_FRAMESIZE_MIN ;
 scalar_t__ REG_MAC_IPG0 ;
 scalar_t__ REG_MAC_IPG1 ;
 scalar_t__ REG_MAC_IPG2 ;
 scalar_t__ REG_MAC_JAM_SIZE ;
 scalar_t__ REG_MAC_PA_SIZE ;
 scalar_t__ REG_MAC_RANDOM_SEED ;
 scalar_t__ REG_MAC_RX_CFG ;
 scalar_t__ REG_MAC_RX_MASK ;
 scalar_t__ REG_MAC_SEND_PAUSE ;
 scalar_t__ REG_MAC_SLOT_TIME ;
 scalar_t__ REG_MAC_TX_MASK ;
 int cas_clear_mac_err (struct cas*) ;
 int cas_mac_reset (struct cas*) ;
 void* cas_setup_multicast (struct cas*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_init_mac(struct cas *cp)
{
 unsigned char *e = &cp->dev->dev_addr[0];
 int i;



 cas_mac_reset(cp);


 writel(CAWR_RR_DIS, cp->regs + REG_CAWR);






 if ((cp->cas_flags & CAS_FLAG_TARGET_ABORT) == 0)
  writel(INF_BURST_EN, cp->regs + REG_INF_BURST);


 writel(0x1BF0, cp->regs + REG_MAC_SEND_PAUSE);

 writel(0x00, cp->regs + REG_MAC_IPG0);
 writel(0x08, cp->regs + REG_MAC_IPG1);
 writel(0x04, cp->regs + REG_MAC_IPG2);


 writel(0x40, cp->regs + REG_MAC_SLOT_TIME);


 writel(ETH_ZLEN + 4, cp->regs + REG_MAC_FRAMESIZE_MIN);





 writel(CAS_BASE(MAC_FRAMESIZE_MAX_BURST, 0x2000) |
        CAS_BASE(MAC_FRAMESIZE_MAX_FRAME,
   (CAS_MAX_MTU + ETH_HLEN + 4 + 4)),
        cp->regs + REG_MAC_FRAMESIZE_MAX);





 if ((cp->cas_flags & CAS_FLAG_SATURN) && cp->crc_size)
  writel(0x41, cp->regs + REG_MAC_PA_SIZE);
 else
  writel(0x07, cp->regs + REG_MAC_PA_SIZE);
 writel(0x04, cp->regs + REG_MAC_JAM_SIZE);
 writel(0x10, cp->regs + REG_MAC_ATTEMPT_LIMIT);
 writel(0x8808, cp->regs + REG_MAC_CTRL_TYPE);

 writel((e[5] | (e[4] << 8)) & 0x3ff, cp->regs + REG_MAC_RANDOM_SEED);

 writel(0, cp->regs + REG_MAC_ADDR_FILTER0);
 writel(0, cp->regs + REG_MAC_ADDR_FILTER1);
 writel(0, cp->regs + REG_MAC_ADDR_FILTER2);
 writel(0, cp->regs + REG_MAC_ADDR_FILTER2_1_MASK);
 writel(0, cp->regs + REG_MAC_ADDR_FILTER0_MASK);


 for (i = 0; i < 45; i++)
  writel(0x0, cp->regs + REG_MAC_ADDRN(i));

 writel((e[4] << 8) | e[5], cp->regs + REG_MAC_ADDRN(0));
 writel((e[2] << 8) | e[3], cp->regs + REG_MAC_ADDRN(1));
 writel((e[0] << 8) | e[1], cp->regs + REG_MAC_ADDRN(2));

 writel(0x0001, cp->regs + REG_MAC_ADDRN(42));
 writel(0xc200, cp->regs + REG_MAC_ADDRN(43));
 writel(0x0180, cp->regs + REG_MAC_ADDRN(44));


 cp->mac_rx_cfg = cas_setup_multicast(cp);
 spin_lock(&cp->stat_lock[N_TX_RINGS]);
 cas_clear_mac_err(cp);
 spin_unlock(&cp->stat_lock[N_TX_RINGS]);





 writel(MAC_TX_FRAME_XMIT, cp->regs + REG_MAC_TX_MASK);
 writel(MAC_RX_FRAME_RECV, cp->regs + REG_MAC_RX_MASK);




 writel(0xffffffff, cp->regs + REG_MAC_CTRL_MASK);
}
