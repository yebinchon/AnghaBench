
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {size_t len; int * buf; } ;


 int i2c_smbus_msg_pec (int ,struct i2c_msg*) ;

__attribute__((used)) static inline void i2c_smbus_add_pec(struct i2c_msg *msg)
{
 msg->buf[msg->len] = i2c_smbus_msg_pec(0, msg);
 msg->len++;
}
