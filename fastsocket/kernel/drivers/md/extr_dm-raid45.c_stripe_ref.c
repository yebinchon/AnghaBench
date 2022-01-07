
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int cnt; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int stripe_ref(struct stripe *stripe)
{
 return atomic_read(&stripe->cnt);
}
