
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct gf128mul_64k {TYPE_1__** t; } ;
typedef int be128 ;
struct TYPE_2__ {int * t; } ;


 int be128_xor (int *,int *,int *) ;

void gf128mul_64k_lle(be128 *a, struct gf128mul_64k *t)
{
 u8 *ap = (u8 *)a;
 be128 r[1];
 int i;

 *r = t->t[0]->t[ap[0]];
 for (i = 1; i < 16; ++i)
  be128_xor(r, r, &t->t[i]->t[ap[i]]);
 *a = *r;
}
