
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int,unsigned int) ;
 unsigned int PAGE_SIZE ;

__attribute__((used)) static int nvme_npages(unsigned size)
{
 unsigned nprps = DIV_ROUND_UP(size + PAGE_SIZE, PAGE_SIZE);
 return DIV_ROUND_UP(8 * nprps, PAGE_SIZE - 8);
}
