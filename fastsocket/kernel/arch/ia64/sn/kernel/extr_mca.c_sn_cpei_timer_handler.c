
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPEI_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int sn_cpei_handler (int,int *,int *) ;
 int sn_cpei_timer ;

__attribute__((used)) static void sn_cpei_timer_handler(unsigned long dummy)
{
 sn_cpei_handler(-1, ((void*)0), ((void*)0));
 mod_timer(&sn_cpei_timer, jiffies + CPEI_INTERVAL);
}
