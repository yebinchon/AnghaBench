
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int dummy; } ;


 int XOR_DEST_POINTER (struct mv_xor_chan*) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void mv_chan_set_dest_pointer(struct mv_xor_chan *chan, u32 desc_addr)
{
 __raw_writel(desc_addr, XOR_DEST_POINTER(chan));
}
