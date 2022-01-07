
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int dummy; } ;


 int B44_MIB_CTRL ;
 unsigned long B44_RX_GOOD_O ;
 unsigned long B44_RX_NPAUSE ;
 unsigned long B44_TX_GOOD_O ;
 unsigned long B44_TX_PAUSE ;
 int MIB_CTRL_CLR_ON_READ ;
 int br32 (struct b44*,unsigned long) ;
 int bw32 (struct b44*,int ,int ) ;

__attribute__((used)) static void b44_clear_stats(struct b44 *bp)
{
 unsigned long reg;

 bw32(bp, B44_MIB_CTRL, MIB_CTRL_CLR_ON_READ);
 for (reg = B44_TX_GOOD_O; reg <= B44_TX_PAUSE; reg += 4UL)
  br32(bp, reg);
 for (reg = B44_RX_GOOD_O; reg <= B44_RX_NPAUSE; reg += 4UL)
  br32(bp, reg);
}
