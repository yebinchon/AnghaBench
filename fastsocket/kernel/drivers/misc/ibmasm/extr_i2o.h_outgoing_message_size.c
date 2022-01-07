
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2o_header {int dummy; } ;


 unsigned int I2O_COMMAND_SIZE ;

__attribute__((used)) static inline unsigned short outgoing_message_size(unsigned int data_size)
{
 unsigned int size;
 unsigned short i2o_size;

 if (data_size > I2O_COMMAND_SIZE)
  data_size = I2O_COMMAND_SIZE;

 size = sizeof(struct i2o_header) + data_size;

 i2o_size = size / sizeof(u32);

 if (size % sizeof(u32))
        i2o_size++;

 return i2o_size;
}
