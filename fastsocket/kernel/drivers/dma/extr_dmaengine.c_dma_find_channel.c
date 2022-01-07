
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
typedef enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;
struct TYPE_2__ {struct dma_chan* chan; } ;


 int * channel_table ;
 int get_cpu () ;
 TYPE_1__* per_cpu_ptr (int ,int) ;
 int put_cpu () ;

struct dma_chan *dma_find_channel(enum dma_transaction_type tx_type)
{
 struct dma_chan *chan;
 int cpu;

 cpu = get_cpu();
 chan = per_cpu_ptr(channel_table[tx_type], cpu)->chan;
 put_cpu();

 return chan;
}
