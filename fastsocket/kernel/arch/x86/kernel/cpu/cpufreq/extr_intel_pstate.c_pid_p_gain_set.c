
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pid {int p_gain; } ;


 int div_fp (int ,int ) ;
 int int_tofp (int) ;

__attribute__((used)) static inline void pid_p_gain_set(struct _pid *pid, int percent)
{
 pid->p_gain = div_fp(int_tofp(percent), int_tofp(100));
}
