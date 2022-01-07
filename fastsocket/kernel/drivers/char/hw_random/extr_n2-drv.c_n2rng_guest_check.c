
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2rng {int test_data; } ;


 unsigned long __pa (int *) ;
 int n2rng_generic_read_data (unsigned long) ;

__attribute__((used)) static int n2rng_guest_check(struct n2rng *np)
{
 unsigned long ra = __pa(&np->test_data);

 return n2rng_generic_read_data(ra);
}
