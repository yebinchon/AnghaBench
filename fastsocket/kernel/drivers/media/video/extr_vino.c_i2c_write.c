
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_sgi_data {int data; int (* wdata ) (int ,unsigned char) ;} ;


 int EIO ;
 int stub1 (int ,unsigned char) ;
 scalar_t__ wait_ack (struct i2c_algo_sgi_data*) ;

__attribute__((used)) static int i2c_write(struct i2c_algo_sgi_data *adap, unsigned char *buf,
       unsigned int len)
{
 int i;


 for (i = 0; i < len; i++) {
  adap->wdata(adap->data, buf[i]);
  if (wait_ack(adap))
   return -EIO;
 }
 return 0;
}
