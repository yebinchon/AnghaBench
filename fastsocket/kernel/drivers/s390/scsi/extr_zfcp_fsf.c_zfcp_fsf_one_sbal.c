
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ sg_is_last (struct scatterlist*) ;

__attribute__((used)) static int zfcp_fsf_one_sbal(struct scatterlist *sg)
{
 return sg_is_last(sg) && sg->length <= PAGE_SIZE;
}
