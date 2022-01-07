
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int tids_in_use; void** tid_tab; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void cxgb4_insert_tid(struct tid_info *t, void *data,
        unsigned int tid)
{
 t->tid_tab[tid] = data;
 atomic_inc(&t->tids_in_use);
}
