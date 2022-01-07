
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ offset; scalar_t__ length; } ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static int do_bounce_buffer(struct scatterlist *sgl, unsigned int sg_count)
{
 int i;


 if (sg_count < 2)
  return -1;


 for (i = 0; i < sg_count; i++) {
  if (i == 0) {

   if (sgl[i].offset + sgl[i].length != PAGE_SIZE)
    return i;
  } else if (i == sg_count - 1) {

   if (sgl[i].offset != 0)
    return i;
  } else {

   if (sgl[i].length != PAGE_SIZE || sgl[i].offset != 0)
    return i;
  }
 }
 return -1;
}
