
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pid {int setpoint; int deadband; int last_err; int integral; } ;


 int int_tofp (int) ;

__attribute__((used)) static inline void pid_reset(struct _pid *pid, int setpoint, int busy,
   int deadband, int integral) {
 pid->setpoint = setpoint;
 pid->deadband = deadband;
 pid->integral = int_tofp(integral);
 pid->last_err = setpoint - busy;
}
