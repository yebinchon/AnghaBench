
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct ibmveth_adapter {TYPE_2__* rx_buff_pool; TYPE_1__* vdev; } ;
struct TYPE_4__ {unsigned int size; unsigned int producer_index; unsigned int* free_map; int available; int buff_size; int * dma_addr; struct sk_buff** skbuff; } ;
struct TYPE_3__ {int dev; } ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 unsigned int IBMVETH_NUM_BUFF_POOLS ;
 int atomic_dec (int *) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int mb () ;

__attribute__((used)) static void ibmveth_remove_buffer_from_pool(struct ibmveth_adapter *adapter,
         u64 correlator)
{
 unsigned int pool = correlator >> 32;
 unsigned int index = correlator & 0xffffffffUL;
 unsigned int free_index;
 struct sk_buff *skb;

 BUG_ON(pool >= IBMVETH_NUM_BUFF_POOLS);
 BUG_ON(index >= adapter->rx_buff_pool[pool].size);

 skb = adapter->rx_buff_pool[pool].skbuff[index];

 BUG_ON(skb == ((void*)0));

 adapter->rx_buff_pool[pool].skbuff[index] = ((void*)0);

 dma_unmap_single(&adapter->vdev->dev,
    adapter->rx_buff_pool[pool].dma_addr[index],
    adapter->rx_buff_pool[pool].buff_size,
    DMA_FROM_DEVICE);

 free_index = adapter->rx_buff_pool[pool].producer_index;
 adapter->rx_buff_pool[pool].producer_index++;
 if (adapter->rx_buff_pool[pool].producer_index >=
     adapter->rx_buff_pool[pool].size)
  adapter->rx_buff_pool[pool].producer_index = 0;
 adapter->rx_buff_pool[pool].free_map[free_index] = index;

 mb();

 atomic_dec(&(adapter->rx_buff_pool[pool].available));
}
