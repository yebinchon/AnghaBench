
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r592_device {int pio_fifo; } ;


 int R592_FIFO_PIO ;
 scalar_t__ kfifo_is_empty (int *) ;
 int kfifo_out (int *,int *,int) ;
 int r592_write_reg_raw_be (struct r592_device*,int ,int ) ;

__attribute__((used)) static void r592_flush_fifo_write(struct r592_device *dev)
{
 u8 buffer[4] = { 0 };
 int len;

 if (kfifo_is_empty(&dev->pio_fifo))
  return;

 len = kfifo_out(&dev->pio_fifo, buffer, 4);
 r592_write_reg_raw_be(dev, R592_FIFO_PIO, *(u32 *)buffer);
}
