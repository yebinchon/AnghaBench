
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int dummy; } ;


 int XOR_BLOCK_SIZE (struct mv_xor_chan*) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void mv_chan_set_block_size(struct mv_xor_chan *chan, u32 block_size)
{
 __raw_writel(block_size, XOR_BLOCK_SIZE(chan));
}
