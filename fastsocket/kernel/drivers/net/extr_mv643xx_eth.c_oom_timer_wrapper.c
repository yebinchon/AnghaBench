
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_private {int napi; } ;


 int napi_schedule (int *) ;

__attribute__((used)) static inline void oom_timer_wrapper(unsigned long data)
{
 struct mv643xx_eth_private *mp = (void *)data;

 napi_schedule(&mp->napi);
}
