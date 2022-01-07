
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ flash_address; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void __ew16flash(struct e1000_hw *hw, unsigned long reg, u16 val)
{
 writew(val, hw->flash_address + reg);
}
