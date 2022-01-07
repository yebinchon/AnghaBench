
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {scalar_t__ mite_io_addr; } ;


 scalar_t__ MITE_FCR (unsigned int) ;
 unsigned int readl (scalar_t__) ;

unsigned mite_fifo_size(struct mite_struct *mite, unsigned channel)
{
 unsigned fcr_bits = readl(mite->mite_io_addr + MITE_FCR(channel));
 unsigned empty_count = (fcr_bits >> 16) & 0xff;
 unsigned full_count = fcr_bits & 0xff;
 return empty_count + full_count;
}
