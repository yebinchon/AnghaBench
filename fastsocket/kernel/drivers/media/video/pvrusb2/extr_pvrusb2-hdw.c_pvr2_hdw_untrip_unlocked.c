
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ flag_tripped; } ;


 int PVR2_TRACE_ERROR_LEGS ;
 int pvr2_trace (int ,char*) ;

__attribute__((used)) static int pvr2_hdw_untrip_unlocked(struct pvr2_hdw *hdw)
{
 if (!hdw->flag_tripped) return 0;
 hdw->flag_tripped = 0;
 pvr2_trace(PVR2_TRACE_ERROR_LEGS,
     "Clearing driver error statuss");
 return !0;
}
