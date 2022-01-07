
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_gather_list {int dummy; } ;
struct cxgbi_ddp_info {int map_lock; int * gl_map; } ;


 int memset (int *,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ddp_unmark_entries(struct cxgbi_ddp_info *ddp,
      int start, int count)
{
 spin_lock(&ddp->map_lock);
 memset(&ddp->gl_map[start], 0,
  count * sizeof(struct cxgbi_gather_list *));
 spin_unlock(&ddp->map_lock);
}
