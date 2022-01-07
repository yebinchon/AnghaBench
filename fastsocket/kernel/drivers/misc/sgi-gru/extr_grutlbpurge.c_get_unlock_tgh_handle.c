
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_global_handle {int dummy; } ;


 int preempt_enable () ;
 int unlock_tgh_handle (struct gru_tlb_global_handle*) ;

__attribute__((used)) static void get_unlock_tgh_handle(struct gru_tlb_global_handle *tgh)
{
 unlock_tgh_handle(tgh);
 preempt_enable();
}
