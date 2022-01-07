
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int dummy; } ;


 int vfree (struct idset*) ;

void idset_free(struct idset *set)
{
 vfree(set);
}
