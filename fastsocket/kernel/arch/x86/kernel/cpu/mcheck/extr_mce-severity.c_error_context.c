
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int cs; } ;


 int IN_KERNEL ;
 int IN_USER ;

__attribute__((used)) static int error_context(struct mce *m)
{
 return ((m->cs & 3) == 3) ? IN_USER : IN_KERNEL;
}
