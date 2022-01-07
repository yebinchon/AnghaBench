
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int sg_init_one (struct scatterlist*,void*,unsigned int) ;

__attribute__((used)) static struct scatterlist* dc390_sg_build_single(struct scatterlist *sg, void *addr, unsigned int length)
{
 sg_init_one(sg, addr, length);
 return sg;
}
