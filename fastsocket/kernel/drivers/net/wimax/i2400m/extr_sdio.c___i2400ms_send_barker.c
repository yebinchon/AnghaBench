
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct i2400ms {struct sdio_func* func; } ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2400MS_BLK_SIZE ;
 int d_printf (int ,struct device*,char*,int) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int memcpy (void*,int const*,size_t) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_memcpy_toio (struct sdio_func*,int ,void*,int ) ;
 int sdio_release_host (struct sdio_func*) ;

__attribute__((used)) static
int __i2400ms_send_barker(struct i2400ms *i2400ms,
     const __le32 *barker, size_t barker_size)
{
 int ret;
 struct sdio_func *func = i2400ms->func;
 struct device *dev = &func->dev;
 void *buffer;

 ret = -ENOMEM;
 buffer = kmalloc(I2400MS_BLK_SIZE, GFP_KERNEL);
 if (buffer == ((void*)0))
  goto error_kzalloc;

 memcpy(buffer, barker, barker_size);
 sdio_claim_host(func);
 ret = sdio_memcpy_toio(func, 0, buffer, I2400MS_BLK_SIZE);
 sdio_release_host(func);

 if (ret < 0)
  d_printf(0, dev, "E: barker error: %d\n", ret);

 kfree(buffer);
error_kzalloc:
 return ret;
}
