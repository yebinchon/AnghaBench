
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r592_device {int pio_fifo; } ;


 int R592_FIFO_PIO ;
 int WARN_ON (int) ;
 int kfifo_in (int *,int *,int) ;
 int kfifo_is_empty (int *) ;
 int kfifo_out (int *,unsigned char*,int) ;
 int min (int,int) ;
 int r592_read_reg_raw_be (struct r592_device*,int ) ;

__attribute__((used)) static void r592_read_fifo_pio(struct r592_device *dev,
      unsigned char *buffer, int len)
{
 u8 tmp[4];


 if (!kfifo_is_empty(&dev->pio_fifo)) {
  int bytes_copied =
   kfifo_out(&dev->pio_fifo, buffer, min(4, len));
  buffer += bytes_copied;
  len -= bytes_copied;

  if (!kfifo_is_empty(&dev->pio_fifo))
   return;
 }


 while (len >= 4) {
  *(u32 *)buffer = r592_read_reg_raw_be(dev, R592_FIFO_PIO);
  buffer += 4;
  len -= 4;
 }

 if (len) {
  *(u32 *)tmp = r592_read_reg_raw_be(dev, R592_FIFO_PIO);
  kfifo_in(&dev->pio_fifo, tmp, 4);
  len -= kfifo_out(&dev->pio_fifo, buffer, len);
 }

 WARN_ON(len);
 return;
}
