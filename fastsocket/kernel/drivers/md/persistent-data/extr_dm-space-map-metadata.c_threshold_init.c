
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold {int threshold_set; int value_set; } ;



__attribute__((used)) static void threshold_init(struct threshold *t)
{
 t->threshold_set = 0;
 t->value_set = 0;
}
