
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_bsg_event {int kref; } ;


 int kref_put (int *,int ) ;
 int lpfc_bsg_event_free ;

__attribute__((used)) static inline void
lpfc_bsg_event_unref(struct lpfc_bsg_event *evt)
{
 kref_put(&evt->kref, lpfc_bsg_event_free);
}
