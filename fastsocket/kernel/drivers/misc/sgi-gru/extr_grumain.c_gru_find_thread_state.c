
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct gru_vma_data* vm_private_data; } ;
struct gru_vma_data {int vd_lock; } ;
struct gru_thread_state {int dummy; } ;


 int gru_dbg (int ,char*,struct vm_area_struct*,struct gru_thread_state*) ;
 struct gru_thread_state* gru_find_current_gts_nolock (struct gru_vma_data*,int) ;
 int grudev ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct gru_thread_state *gru_find_thread_state(struct vm_area_struct *vma,
     int tsid)
{
 struct gru_vma_data *vdata = vma->vm_private_data;
 struct gru_thread_state *gts;

 spin_lock(&vdata->vd_lock);
 gts = gru_find_current_gts_nolock(vdata, tsid);
 spin_unlock(&vdata->vd_lock);
 gru_dbg(grudev, "vma %p, gts %p\n", vma, gts);
 return gts;
}
