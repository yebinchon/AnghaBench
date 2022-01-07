
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union active_open_entry {int dummy; } active_open_entry ;
struct tid_info {unsigned int atid_base; union active_open_entry* atid_tab; } ;



__attribute__((used)) static inline union active_open_entry *atid2entry(const struct tid_info *t,
        unsigned int atid)
{
 return &t->atid_tab[atid - t->atid_base];
}
