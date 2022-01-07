
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm5974_param {scalar_t__ dim; } ;


 int clamp_val (int,int ,scalar_t__) ;
 int int2scale (struct bcm5974_param const*,int) ;

__attribute__((used)) static inline int int2bound(const struct bcm5974_param *p, int x)
{
 int s = int2scale(p, x);

 return clamp_val(s, 0, p->dim - 1);
}
