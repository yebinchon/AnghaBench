
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int fast_event_count; } ;
struct lpfc_fast_path_event {int dummy; } ;


 int atomic_dec (int *) ;
 int kfree (struct lpfc_fast_path_event*) ;

void
lpfc_free_fast_evt(struct lpfc_hba *phba,
  struct lpfc_fast_path_event *evt) {

 atomic_dec(&phba->fast_event_count);
 kfree(evt);
}
