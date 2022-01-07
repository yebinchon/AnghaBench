
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int remove_wq; int refcount; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
zfcp_unit_put(struct zfcp_unit *unit)
{
 if (atomic_dec_return(&unit->refcount) == 0)
  wake_up(&unit->remove_wq);
}
