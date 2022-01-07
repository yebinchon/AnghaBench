
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cxio_init_resource_fifo (int *,int *,int ,int,int ) ;
 int rhdl_fifo ;
 int rhdl_fifo_lock ;

int cxio_hal_init_rhdl_resource(u32 nr_rhdl)
{
 return cxio_init_resource_fifo(&rhdl_fifo, &rhdl_fifo_lock, nr_rhdl, 1,
           0);
}
