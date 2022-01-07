
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prom_args {int dummy; } ;


 int stub1 (struct prom_args*) ;

__attribute__((used)) static inline int enter_prom(struct prom_args *args, unsigned long entry)
{
 return ((int (*)(struct prom_args *))entry)(args);
}
