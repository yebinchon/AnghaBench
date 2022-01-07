
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIFODATA ;
 int nsp_mmio_multi_read_4 (unsigned int,int ,void*,unsigned long) ;

__attribute__((used)) static inline void nsp_mmio_fifo32_read(unsigned int base,
     void *buf,
     unsigned long count)
{

 nsp_mmio_multi_read_4(base, FIFODATA, buf, count);
}
