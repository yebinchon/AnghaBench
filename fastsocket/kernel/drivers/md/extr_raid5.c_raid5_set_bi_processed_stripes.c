
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_phys_segments; } ;
typedef int atomic_t ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;

__attribute__((used)) static inline void raid5_set_bi_processed_stripes(struct bio *bio,
 unsigned int cnt)
{
 atomic_t *segments = (atomic_t *)&bio->bi_phys_segments;
 int old, new;

 do {
  old = atomic_read(segments);
  new = (old & 0xffff) | (cnt << 16);
 } while (atomic_cmpxchg(segments, old, new) != old);
}
