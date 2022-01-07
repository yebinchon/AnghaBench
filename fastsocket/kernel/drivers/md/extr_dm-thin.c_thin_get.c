
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void thin_get(struct thin_c *tc)
{
 atomic_inc(&tc->refcount);
}
