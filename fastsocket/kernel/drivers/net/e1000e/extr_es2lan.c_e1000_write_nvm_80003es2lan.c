
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000e_write_nvm_spi (struct e1000_hw*,int ,int ,int *) ;

__attribute__((used)) static s32 e1000_write_nvm_80003es2lan(struct e1000_hw *hw, u16 offset,
           u16 words, u16 *data)
{
 return e1000e_write_nvm_spi(hw, offset, words, data);
}
