
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ counter; } ;
struct qib_pportdata {TYPE_1__ cong_stats; int ibport_data; } ;


 int IB_PMA_PORT_XMIT_WAIT ;
 scalar_t__ get_counter (int *,struct qib_pportdata*,int ) ;

__attribute__((used)) static u64 xmit_wait_get_value_delta(struct qib_pportdata *ppd)
{
 u32 delta;

 delta = get_counter(&ppd->ibport_data, ppd,
       IB_PMA_PORT_XMIT_WAIT);
 return ppd->cong_stats.counter + delta;
}
