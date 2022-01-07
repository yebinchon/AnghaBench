
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_phys_segments; } ;
typedef int atomic_t ;


 int atomic_set (int *,unsigned int) ;

__attribute__((used)) static inline void raid5_set_bi_stripes(struct bio *bio, unsigned int cnt)
{
 atomic_t *segments = (atomic_t *)&bio->bi_phys_segments;
 atomic_set(segments, cnt);
}
