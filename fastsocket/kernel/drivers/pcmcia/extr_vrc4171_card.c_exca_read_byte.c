
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CARD_CONTROLLER_DATA ;
 int CARD_CONTROLLER_INDEX ;
 int CARD_SLOTB ;
 scalar_t__ CARD_SLOTB_OFFSET ;
 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static inline uint8_t exca_read_byte(int slot, uint8_t index)
{
 if (slot == CARD_SLOTB)
  index += CARD_SLOTB_OFFSET;

 outb(index, CARD_CONTROLLER_INDEX);
 return inb(CARD_CONTROLLER_DATA);
}
