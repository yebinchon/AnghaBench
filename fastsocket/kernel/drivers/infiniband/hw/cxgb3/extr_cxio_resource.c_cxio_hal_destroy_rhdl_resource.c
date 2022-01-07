
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfifo_free (int ) ;
 int rhdl_fifo ;

void cxio_hal_destroy_rhdl_resource(void)
{
 kfifo_free(rhdl_fifo);
}
