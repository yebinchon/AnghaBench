
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct bt856 {int* reg; } ;


 size_t BT856_REG_OFFSET ;
 int bt856_write (struct bt856*,size_t,int) ;

__attribute__((used)) static inline int bt856_setbit(struct bt856 *encoder, u8 reg, u8 bit, u8 value)
{
 return bt856_write(encoder, reg,
  (encoder->reg[reg - BT856_REG_OFFSET] & ~(1 << bit)) |
    (value ? (1 << bit) : 0));
}
