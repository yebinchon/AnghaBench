
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule_timeout_interruptible (int) ;

__attribute__((used)) static void pt_sleep(int cs)
{
 schedule_timeout_interruptible(cs);
}
