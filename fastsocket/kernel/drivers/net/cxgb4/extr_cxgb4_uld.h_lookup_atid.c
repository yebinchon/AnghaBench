
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {unsigned int natids; TYPE_1__* atid_tab; } ;
struct TYPE_2__ {void* data; } ;



__attribute__((used)) static inline void *lookup_atid(const struct tid_info *t, unsigned int atid)
{
 return atid < t->natids ? t->atid_tab[atid].data : ((void*)0);
}
