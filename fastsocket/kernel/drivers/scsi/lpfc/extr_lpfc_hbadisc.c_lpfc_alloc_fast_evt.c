
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {int fast_event_count; } ;
struct TYPE_2__ {int evt; int evt_listp; } ;
struct lpfc_fast_path_event {TYPE_1__ work_evt; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int LPFC_EVT_FASTPATH_MGMT_EVT ;
 scalar_t__ LPFC_MAX_EVT_COUNT ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct lpfc_fast_path_event* kzalloc (int,int ) ;

struct lpfc_fast_path_event *
lpfc_alloc_fast_evt(struct lpfc_hba *phba) {
 struct lpfc_fast_path_event *ret;


 if (atomic_read(&phba->fast_event_count) > LPFC_MAX_EVT_COUNT)
  return ((void*)0);

 ret = kzalloc(sizeof(struct lpfc_fast_path_event),
   GFP_ATOMIC);
 if (ret) {
  atomic_inc(&phba->fast_event_count);
  INIT_LIST_HEAD(&ret->work_evt.evt_listp);
  ret->work_evt.evt = LPFC_EVT_FASTPATH_MGMT_EVT;
 }
 return ret;
}
