
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct skge_hw {int dummy; } ;


 int gma_write16 (struct skge_hw*,int,int,int) ;

__attribute__((used)) static inline void gma_set_addr(struct skge_hw *hw, int port, int reg,
        const u8 *addr)
{
 gma_write16(hw, port, reg, (u16) addr[0] | ((u16) addr[1] << 8));
 gma_write16(hw, port, reg+4,(u16) addr[2] | ((u16) addr[3] << 8));
 gma_write16(hw, port, reg+8,(u16) addr[4] | ((u16) addr[5] << 8));
}
