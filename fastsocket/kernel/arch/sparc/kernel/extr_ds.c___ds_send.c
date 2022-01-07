
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int ldc_write (struct ldc_channel*,void*,int) ;
 int udelay (int) ;

__attribute__((used)) static int __ds_send(struct ldc_channel *lp, void *data, int len)
{
 int err, limit = 1000;

 err = -EINVAL;
 while (limit-- > 0) {
  err = ldc_write(lp, data, len);
  if (!err || (err != -EAGAIN))
   break;
  udelay(1);
 }

 return err;
}
