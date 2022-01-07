
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIFODATA ;
 int nsp_multi_read_1 (unsigned int,int ,void*,unsigned long) ;

__attribute__((used)) static inline void nsp_fifo8_read(unsigned int base,
      void *buf,
      unsigned long count)
{

 nsp_multi_read_1(base, FIFODATA, buf, count);
}
