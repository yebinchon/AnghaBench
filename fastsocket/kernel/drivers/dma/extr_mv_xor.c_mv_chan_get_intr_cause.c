
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int idx; } ;


 int XOR_INTR_CAUSE (struct mv_xor_chan*) ;
 int __raw_readl (int ) ;

__attribute__((used)) static u32 mv_chan_get_intr_cause(struct mv_xor_chan *chan)
{
 u32 intr_cause = __raw_readl(XOR_INTR_CAUSE(chan));
 intr_cause = (intr_cause >> (chan->idx * 16)) & 0xFFFF;
 return intr_cause;
}
