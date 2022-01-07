
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct uv_rtc_timer_head {int next_cpu; int ncpus; TYPE_1__* cpu; } ;
struct TYPE_2__ {scalar_t__ expires; int lcpu; } ;


 scalar_t__ ULLONG_MAX ;
 int UVH_RTC1_INT_CONFIG ;
 int UVH_RTC1_INT_CONFIG_M_MASK ;
 int uv_rtc_send_IPI (int) ;
 scalar_t__ uv_setup_intr (int,scalar_t__) ;
 int uv_write_global_mmr64 (int,int ,int ) ;

__attribute__((used)) static void uv_rtc_find_next_timer(struct uv_rtc_timer_head *head, int pnode)
{
 u64 lowest = ULLONG_MAX;
 int c, bcpu = -1;

 head->next_cpu = -1;
 for (c = 0; c < head->ncpus; c++) {
  u64 exp = head->cpu[c].expires;
  if (exp < lowest) {
   bcpu = c;
   lowest = exp;
  }
 }
 if (bcpu >= 0) {
  head->next_cpu = bcpu;
  c = head->cpu[bcpu].lcpu;
  if (uv_setup_intr(c, lowest))

   uv_rtc_send_IPI(c);
 } else {
  uv_write_global_mmr64(pnode, UVH_RTC1_INT_CONFIG,
   UVH_RTC1_INT_CONFIG_M_MASK);
 }
}
