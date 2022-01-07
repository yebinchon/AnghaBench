
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stu300_dev {int msg_len; int msg_index; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 struct stu300_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int stu300_xfer_msg (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int stu300_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
    int num)
{
 int ret = -1;
 int i;

 struct stu300_dev *dev = i2c_get_adapdata(adap);
 dev->msg_len = num;

 for (i = 0; i < num; i++) {







  dev->msg_index = i;

  ret = stu300_xfer_msg(adap, &msgs[i], (i == (num - 1)));

  if (ret != 0) {
   num = ret;
   break;
  }
 }

 return num;
}
