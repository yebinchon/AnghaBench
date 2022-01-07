
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _kmirrord_recovery_stopped ;
 int wake_up_all (int *) ;

__attribute__((used)) static void wakeup_all_recovery_waiters(void *context)
{
 wake_up_all(&_kmirrord_recovery_stopped);
}
