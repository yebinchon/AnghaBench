
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2rng {int num_units; } ;


 int n2rng_control_selftest (struct n2rng*,int) ;

__attribute__((used)) static int n2rng_control_check(struct n2rng *np)
{
 int i;

 for (i = 0; i < np->num_units; i++) {
  int err = n2rng_control_selftest(np, i);
  if (err)
   return err;
 }
 return 0;
}
