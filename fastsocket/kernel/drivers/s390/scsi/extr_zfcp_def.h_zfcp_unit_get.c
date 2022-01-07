
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
zfcp_unit_get(struct zfcp_unit *unit)
{
 atomic_inc(&unit->refcount);
}
