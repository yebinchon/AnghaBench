
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int sg_set_buf (struct scatterlist*,void const*,unsigned int) ;

__attribute__((used)) static unsigned int
setup_sg(struct scatterlist *sg, const void *address, unsigned int length)
{
 sg_set_buf(sg, address, length);
 return length;
}
