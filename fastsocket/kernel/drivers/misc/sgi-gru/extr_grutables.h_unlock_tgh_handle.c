
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_global_handle {int dummy; } ;


 int __unlock_handle (struct gru_tlb_global_handle*) ;

__attribute__((used)) static inline void unlock_tgh_handle(struct gru_tlb_global_handle *tgh)
{
 __unlock_handle(tgh);
}
