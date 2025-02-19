
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {size_t len; int * buf; } ;


 int EBADMSG ;
 int i2c_smbus_msg_pec (int ,struct i2c_msg*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int i2c_smbus_check_pec(u8 cpec, struct i2c_msg *msg)
{
 u8 rpec = msg->buf[--msg->len];
 cpec = i2c_smbus_msg_pec(cpec, msg);

 if (rpec != cpec) {
  pr_debug("i2c-core: Bad PEC 0x%02x vs. 0x%02x\n",
   rpec, cpec);
  return -EBADMSG;
 }
 return 0;
}
