
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ql82xx_hw_data {int flash_data_off; } ;



__attribute__((used)) static inline uint32_t
flash_data_addr(struct ql82xx_hw_data *hw, uint32_t faddr)
{
 return hw->flash_data_off | faddr;
}
