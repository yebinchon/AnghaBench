
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VMAGIC ;
 int printk (char*,char*) ;
 scalar_t__ vdso_enabled ;

__attribute__((used)) static inline void *var_ref(void *p, char *name)
{
 if (*(void **)p != (void *)VMAGIC) {
  printk("VDSO: variable %s broken\n", name);
  vdso_enabled = 0;
 }
 return p;
}
