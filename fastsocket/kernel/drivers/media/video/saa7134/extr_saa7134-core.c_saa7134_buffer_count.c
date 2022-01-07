
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int saa7134_buffer_pages (unsigned int) ;

int saa7134_buffer_count(unsigned int size, unsigned int count)
{
 unsigned int maxcount;

 maxcount = 1024 / saa7134_buffer_pages(size);
 if (count > maxcount)
  count = maxcount;
 return count;
}
