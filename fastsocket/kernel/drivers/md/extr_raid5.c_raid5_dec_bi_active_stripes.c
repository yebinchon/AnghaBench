
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_phys_segments; } ;
typedef int atomic_t ;


 int atomic_sub_return (int,int *) ;

__attribute__((used)) static inline int raid5_dec_bi_active_stripes(struct bio *bio)
{
 atomic_t *segments = (atomic_t *)&bio->bi_phys_segments;
 return atomic_sub_return(1, segments) & 0xffff;
}
