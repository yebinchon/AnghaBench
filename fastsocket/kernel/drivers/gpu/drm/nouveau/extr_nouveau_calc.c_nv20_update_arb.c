
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ilog2 (unsigned int) ;

__attribute__((used)) static void
nv20_update_arb(int *burst, int *lwm)
{
 unsigned int fifo_size, burst_size, graphics_lwm;

 fifo_size = 2048;
 burst_size = 512;
 graphics_lwm = fifo_size - burst_size;

 *burst = ilog2(burst_size >> 5);
 *lwm = graphics_lwm >> 3;
}
