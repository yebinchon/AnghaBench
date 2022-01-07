
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_i2c_client {int dummy; } ;


 int bbc_i2c_writeb (struct bbc_i2c_client*,char,int) ;

int bbc_i2c_write_buf(struct bbc_i2c_client *client,
        char *buf, int len, int off)
{
 int ret = 0;

 while (len > 0) {
  int err = bbc_i2c_writeb(client, *buf, off);

  if (err < 0) {
   ret = err;
   break;
  }

  len--;
  buf++;
  off++;
 }
 return ret;
}
