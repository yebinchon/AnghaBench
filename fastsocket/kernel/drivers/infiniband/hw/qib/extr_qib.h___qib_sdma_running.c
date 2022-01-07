
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_state; } ;
struct qib_pportdata {TYPE_1__ sdma_state; } ;


 scalar_t__ qib_sdma_state_s99_running ;

__attribute__((used)) static inline int __qib_sdma_running(struct qib_pportdata *ppd)
{
 return ppd->sdma_state.current_state == qib_sdma_state_s99_running;
}
