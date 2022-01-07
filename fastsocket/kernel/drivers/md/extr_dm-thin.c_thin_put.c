
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int can_destroy; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void thin_put(struct thin_c *tc)
{
 if (atomic_dec_and_test(&tc->refcount))
  complete(&tc->can_destroy);
}
