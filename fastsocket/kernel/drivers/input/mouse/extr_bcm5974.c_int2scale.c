
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm5974_param {int dim; int devmax; int devmin; } ;



__attribute__((used)) static inline int int2scale(const struct bcm5974_param *p, int x)
{
 return x * p->dim / (p->devmax - p->devmin);
}
