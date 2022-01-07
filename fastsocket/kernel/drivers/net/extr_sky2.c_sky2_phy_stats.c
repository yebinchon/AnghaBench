
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct TYPE_2__ {int offset; } ;


 int GM_RXO_OK_HI ;
 int GM_RXO_OK_LO ;
 int GM_TXO_OK_HI ;
 int GM_TXO_OK_LO ;
 scalar_t__ gma_read32 (struct sky2_hw*,unsigned int,int ) ;
 TYPE_1__* sky2_stats ;

__attribute__((used)) static void sky2_phy_stats(struct sky2_port *sky2, u64 * data, unsigned count)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 int i;

 data[0] = (u64) gma_read32(hw, port, GM_TXO_OK_HI) << 32
     | (u64) gma_read32(hw, port, GM_TXO_OK_LO);
 data[1] = (u64) gma_read32(hw, port, GM_RXO_OK_HI) << 32
     | (u64) gma_read32(hw, port, GM_RXO_OK_LO);

 for (i = 2; i < count; i++)
  data[i] = (u64) gma_read32(hw, port, sky2_stats[i].offset);
}
