
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r592_device {int pio_fifo; } ;


 int R592_FIFO_PIO ;
 int WARN_ON (int) ;
 int kfifo_in (int *,unsigned char*,int) ;
 int kfifo_is_empty (int *) ;
 int kfifo_is_full (int *) ;
 int kfifo_out (int *,int *,int) ;
 int r592_write_reg_raw_be (struct r592_device*,int ,int ) ;

__attribute__((used)) static void r592_write_fifo_pio(struct r592_device *dev,
     unsigned char *buffer, int len)
{

 if (!kfifo_is_empty(&dev->pio_fifo)) {

  u8 tmp[4] = {0};
  int copy_len = kfifo_in(&dev->pio_fifo, buffer, len);

  if (!kfifo_is_full(&dev->pio_fifo))
   return;
  len -= copy_len;
  buffer += copy_len;

  copy_len = kfifo_out(&dev->pio_fifo, tmp, 4);
  WARN_ON(copy_len != 4);
  r592_write_reg_raw_be(dev, R592_FIFO_PIO, *(u32 *)tmp);
 }

 WARN_ON(!kfifo_is_empty(&dev->pio_fifo));


 while (len >= 4) {
  r592_write_reg_raw_be(dev, R592_FIFO_PIO, *(u32 *)buffer);
  buffer += 4;
  len -= 4;
 }


 if (len)
  kfifo_in(&dev->pio_fifo, buffer, len);
}
