
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {unsigned int nstids; TYPE_1__* stid_tab; scalar_t__ stid_base; } ;
struct TYPE_2__ {void* data; } ;



__attribute__((used)) static inline void *lookup_stid(const struct tid_info *t, unsigned int stid)
{
 stid -= t->stid_base;
 return stid < t->nstids ? t->stid_tab[stid].data : ((void*)0);
}
