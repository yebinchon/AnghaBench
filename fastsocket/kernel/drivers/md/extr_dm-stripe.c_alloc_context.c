
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_c {int dummy; } ;
struct stripe {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ dm_array_too_big (int,int,unsigned int) ;
 struct stripe_c* kmalloc (size_t,int ) ;

__attribute__((used)) static inline struct stripe_c *alloc_context(unsigned int stripes)
{
 size_t len;

 if (dm_array_too_big(sizeof(struct stripe_c), sizeof(struct stripe),
        stripes))
  return ((void*)0);

 len = sizeof(struct stripe_c) + (sizeof(struct stripe) * stripes);

 return kmalloc(len, GFP_KERNEL);
}
