
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct typhoon_shared {int dummy; } ;
struct typhoon_interface {void* txLoAddr; void* zeroAddr; void* respSize; void* respAddr; void* cmdSize; void* cmdAddr; void* rxHiSize; void* rxHiAddr; void* rxLoSize; void* rxLoAddr; void* rxBuffSize; void* rxBuffAddr; void* txHiSize; void* txHiAddr; void* txLoSize; void* ringIndex; } ;
struct TYPE_15__ {int writeRegister; int * ringBase; } ;
struct TYPE_14__ {int writeRegister; int * ringBase; } ;
struct TYPE_13__ {int * ringBase; } ;
struct TYPE_12__ {int * ringBase; } ;
struct TYPE_11__ {int * ringBase; } ;
struct TYPE_10__ {int * ringBase; } ;
struct TYPE_9__ {int * ringBase; } ;
struct typhoon {int shared_dma; int offload; int state_lock; int command_lock; int card_state; int txlo_dma_addr; TYPE_7__ txHiRing; TYPE_6__ txLoRing; TYPE_8__* shared; TYPE_5__ respRing; TYPE_4__ cmdRing; TYPE_3__ rxBuffRing; TYPE_2__ rxHiRing; TYPE_1__ rxLoRing; int * indexes; } ;
struct tx_desc {int dummy; } ;
struct rx_free {int dummy; } ;
struct rx_desc {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_16__ {scalar_t__ resp; scalar_t__ cmd; scalar_t__ rxBuff; scalar_t__ rxHi; scalar_t__ rxLo; scalar_t__ txHi; scalar_t__ txLo; int indexes; struct typhoon_interface iface; } ;


 int COMMAND_RING_SIZE ;
 int RESPONSE_RING_SIZE ;
 int RXFREE_ENTRIES ;
 int RX_ENTRIES ;
 int Sleeping ;
 int TSO_OFFLOAD_ON ;
 int TXHI_ENTRIES ;
 int TXLO_ENTRIES ;
 int TYPHOON_OFFLOAD_IP_CHKSUM ;
 int TYPHOON_OFFLOAD_TCP_CHKSUM ;
 int TYPHOON_OFFLOAD_UDP_CHKSUM ;
 int TYPHOON_REG_TX_HI_READY ;
 int TYPHOON_REG_TX_LO_READY ;
 int cmd ;
 void* cpu_to_le32 (int) ;
 int indexes ;
 int le32_to_cpu (void*) ;
 int memset (TYPE_8__*,int ,int) ;
 int resp ;
 int rxBuff ;
 int rxHi ;
 int rxLo ;
 int shared_offset (int ) ;
 int smp_wmb () ;
 int spin_lock_init (int *) ;
 int txHi ;
 int txLo ;
 int zeroWord ;

__attribute__((used)) static void
typhoon_init_interface(struct typhoon *tp)
{
 struct typhoon_interface *iface = &tp->shared->iface;
 dma_addr_t shared_dma;

 memset(tp->shared, 0, sizeof(struct typhoon_shared));



 shared_dma = tp->shared_dma + shared_offset(indexes);
 iface->ringIndex = cpu_to_le32(shared_dma);

 shared_dma = tp->shared_dma + shared_offset(txLo);
 iface->txLoAddr = cpu_to_le32(shared_dma);
 iface->txLoSize = cpu_to_le32(TXLO_ENTRIES * sizeof(struct tx_desc));

 shared_dma = tp->shared_dma + shared_offset(txHi);
 iface->txHiAddr = cpu_to_le32(shared_dma);
 iface->txHiSize = cpu_to_le32(TXHI_ENTRIES * sizeof(struct tx_desc));

 shared_dma = tp->shared_dma + shared_offset(rxBuff);
 iface->rxBuffAddr = cpu_to_le32(shared_dma);
 iface->rxBuffSize = cpu_to_le32(RXFREE_ENTRIES *
     sizeof(struct rx_free));

 shared_dma = tp->shared_dma + shared_offset(rxLo);
 iface->rxLoAddr = cpu_to_le32(shared_dma);
 iface->rxLoSize = cpu_to_le32(RX_ENTRIES * sizeof(struct rx_desc));

 shared_dma = tp->shared_dma + shared_offset(rxHi);
 iface->rxHiAddr = cpu_to_le32(shared_dma);
 iface->rxHiSize = cpu_to_le32(RX_ENTRIES * sizeof(struct rx_desc));

 shared_dma = tp->shared_dma + shared_offset(cmd);
 iface->cmdAddr = cpu_to_le32(shared_dma);
 iface->cmdSize = cpu_to_le32(COMMAND_RING_SIZE);

 shared_dma = tp->shared_dma + shared_offset(resp);
 iface->respAddr = cpu_to_le32(shared_dma);
 iface->respSize = cpu_to_le32(RESPONSE_RING_SIZE);

 shared_dma = tp->shared_dma + shared_offset(zeroWord);
 iface->zeroAddr = cpu_to_le32(shared_dma);

 tp->indexes = &tp->shared->indexes;
 tp->txLoRing.ringBase = (u8 *) tp->shared->txLo;
 tp->txHiRing.ringBase = (u8 *) tp->shared->txHi;
 tp->rxLoRing.ringBase = (u8 *) tp->shared->rxLo;
 tp->rxHiRing.ringBase = (u8 *) tp->shared->rxHi;
 tp->rxBuffRing.ringBase = (u8 *) tp->shared->rxBuff;
 tp->cmdRing.ringBase = (u8 *) tp->shared->cmd;
 tp->respRing.ringBase = (u8 *) tp->shared->resp;

 tp->txLoRing.writeRegister = TYPHOON_REG_TX_LO_READY;
 tp->txHiRing.writeRegister = TYPHOON_REG_TX_HI_READY;

 tp->txlo_dma_addr = le32_to_cpu(iface->txLoAddr);
 tp->card_state = Sleeping;
 smp_wmb();

 tp->offload = TYPHOON_OFFLOAD_IP_CHKSUM | TYPHOON_OFFLOAD_TCP_CHKSUM;
 tp->offload |= TYPHOON_OFFLOAD_UDP_CHKSUM | TSO_OFFLOAD_ON;

 spin_lock_init(&tp->command_lock);
 spin_lock_init(&tp->state_lock);
}
