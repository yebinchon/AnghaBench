
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {scalar_t__ chip_id; } ;


 scalar_t__ CHIP_ID_GENESIS ;

__attribute__((used)) static inline u32 hwkhz(const struct skge_hw *hw)
{
 return (hw->chip_id == CHIP_ID_GENESIS) ? 53125 : 78125;
}
