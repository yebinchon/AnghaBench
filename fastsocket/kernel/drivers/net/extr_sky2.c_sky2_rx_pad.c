
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_hw {int flags; } ;


 int SKY2_HW_RAM_BUFFER ;

__attribute__((used)) static inline unsigned sky2_rx_pad(const struct sky2_hw *hw)
{
 return (hw->flags & SKY2_HW_RAM_BUFFER) ? 8 : 2;
}
