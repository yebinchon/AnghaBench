
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct smsc47m1_data {scalar_t__ addr; } ;


 int outb_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void smsc47m1_write_value(struct smsc47m1_data *data, u8 reg,
  u8 value)
{
 outb_p(value, data->addr + reg);
}
