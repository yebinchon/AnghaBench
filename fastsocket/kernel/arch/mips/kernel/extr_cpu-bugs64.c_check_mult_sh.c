
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R4000_WAR ;
 int bug64hit ;
 int mult_sh_align_mod (long*,long*,long*,int,int) ;
 int nowar ;
 int panic (int ,int ) ;
 int printk (char*) ;
 int r4kwar ;

__attribute__((used)) static inline void check_mult_sh(void)
{
 long v1[8], v2[8], w[8];
 int bug, fix, i;

 printk("Checking for the multiply/shift bug... ");
 mult_sh_align_mod(&v1[0], &v2[0], &w[0], 32, 0);
 mult_sh_align_mod(&v1[1], &v2[1], &w[1], 32, 1);
 mult_sh_align_mod(&v1[2], &v2[2], &w[2], 32, 2);
 mult_sh_align_mod(&v1[3], &v2[3], &w[3], 32, 3);
 mult_sh_align_mod(&v1[4], &v2[4], &w[4], 32, 4);
 mult_sh_align_mod(&v1[5], &v2[5], &w[5], 32, 5);
 mult_sh_align_mod(&v1[6], &v2[6], &w[6], 32, 6);
 mult_sh_align_mod(&v1[7], &v2[7], &w[7], 32, 7);

 bug = 0;
 for (i = 0; i < 8; i++)
  if (v1[i] != w[i])
   bug = 1;

 if (bug == 0) {
  printk("no.\n");
  return;
 }

 printk("yes, workaround... ");

 fix = 1;
 for (i = 0; i < 8; i++)
  if (v2[i] != w[i])
   fix = 0;

 if (fix == 1) {
  printk("yes.\n");
  return;
 }

 printk("no.\n");
 panic(bug64hit, !R4000_WAR ? r4kwar : nowar);
}
