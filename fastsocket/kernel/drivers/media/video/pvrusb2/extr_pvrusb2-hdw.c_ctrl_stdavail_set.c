
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct pvr2_hdw {int std_mask_avail; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;


 int pvr2_hdw_internal_find_stdenum (struct pvr2_hdw*) ;
 int pvr2_hdw_internal_set_std_avail (struct pvr2_hdw*) ;

__attribute__((used)) static int ctrl_stdavail_set(struct pvr2_ctrl *cptr,int m,int v)
{
 struct pvr2_hdw *hdw = cptr->hdw;
 v4l2_std_id ns;
 ns = hdw->std_mask_avail;
 ns = (ns & ~m) | (v & m);
 if (ns == hdw->std_mask_avail) return 0;
 hdw->std_mask_avail = ns;
 pvr2_hdw_internal_set_std_avail(hdw);
 pvr2_hdw_internal_find_stdenum(hdw);
 return 0;
}
