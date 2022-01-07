
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wrperfmon (int ,int) ;

__attribute__((used)) static inline void
op_axp_cpu_stop(void *dummy)
{

 wrperfmon(0, -1);
}
