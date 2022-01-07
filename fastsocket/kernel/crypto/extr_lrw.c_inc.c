
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; int b; } ;
typedef TYPE_1__ be128 ;


 int be64_add_cpu (int *,int) ;

__attribute__((used)) static inline void inc(be128 *iv)
{
 be64_add_cpu(&iv->b, 1);
 if (!iv->b)
  be64_add_cpu(&iv->a, 1);
}
