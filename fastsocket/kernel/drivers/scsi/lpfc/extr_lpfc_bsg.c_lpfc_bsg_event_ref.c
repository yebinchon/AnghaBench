
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_bsg_event {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void
lpfc_bsg_event_ref(struct lpfc_bsg_event *evt)
{
 kref_get(&evt->kref);
}
