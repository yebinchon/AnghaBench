
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gf128mul_64k {TYPE_1__** t; } ;
typedef int be128 ;
struct TYPE_2__ {int * t; } ;


 int GFP_KERNEL ;
 int be128_xor (int *,int *,int *) ;
 int gf128mul_free_64k (struct gf128mul_64k*) ;
 int gf128mul_x8_lle (int *) ;
 int gf128mul_x_lle (int *,int *) ;
 void* kzalloc (int,int ) ;

struct gf128mul_64k *gf128mul_init_64k_lle(const be128 *g)
{
 struct gf128mul_64k *t;
 int i, j, k;

 t = kzalloc(sizeof(*t), GFP_KERNEL);
 if (!t)
  goto out;

 for (i = 0; i < 16; i++) {
  t->t[i] = kzalloc(sizeof(*t->t[i]), GFP_KERNEL);
  if (!t->t[i]) {
   gf128mul_free_64k(t);
   t = ((void*)0);
   goto out;
  }
 }

 t->t[0]->t[128] = *g;
 for (j = 64; j > 0; j >>= 1)
  gf128mul_x_lle(&t->t[0]->t[j], &t->t[0]->t[j + j]);

 for (i = 0;;) {
  for (j = 2; j < 256; j += j)
   for (k = 1; k < j; ++k)
    be128_xor(&t->t[i]->t[j + k],
       &t->t[i]->t[j], &t->t[i]->t[k]);

  if (++i >= 16)
   break;

  for (j = 128; j > 0; j >>= 1) {
   t->t[i]->t[j] = t->t[i - 1]->t[j];
   gf128mul_x8_lle(&t->t[i]->t[j]);
  }
 }

out:
 return t;
}
