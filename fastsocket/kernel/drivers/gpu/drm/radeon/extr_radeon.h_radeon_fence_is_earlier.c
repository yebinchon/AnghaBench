
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {scalar_t__ ring; scalar_t__ seq; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline bool radeon_fence_is_earlier(struct radeon_fence *a,
        struct radeon_fence *b)
{
 if (!a) {
  return 0;
 }

 if (!b) {
  return 1;
 }

 BUG_ON(a->ring != b->ring);

 return a->seq < b->seq;
}
