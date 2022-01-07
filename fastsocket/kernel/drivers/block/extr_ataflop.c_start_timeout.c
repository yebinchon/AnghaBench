
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLOPPY_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timeout_timer ;

__attribute__((used)) static inline void start_timeout(void)
{
 mod_timer(&timeout_timer, jiffies + FLOPPY_TIMEOUT);
}
