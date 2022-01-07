
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf128mul_64k {struct gf128mul_64k** t; } ;


 int kfree (struct gf128mul_64k*) ;

void gf128mul_free_64k(struct gf128mul_64k *t)
{
 int i;

 for (i = 0; i < 16; i++)
  kfree(t->t[i]);
 kfree(t);
}
