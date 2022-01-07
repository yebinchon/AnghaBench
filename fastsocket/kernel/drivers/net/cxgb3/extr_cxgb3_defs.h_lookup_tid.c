
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {unsigned int ntids; struct t3c_tid_entry* tid_tab; } ;
struct t3c_tid_entry {scalar_t__ client; } ;



__attribute__((used)) static inline struct t3c_tid_entry *lookup_tid(const struct tid_info *t,
            unsigned int tid)
{
 struct t3c_tid_entry *t3c_tid = tid < t->ntids ?
     &(t->tid_tab[tid]) : ((void*)0);

 return (t3c_tid && t3c_tid->client) ? t3c_tid : ((void*)0);
}
