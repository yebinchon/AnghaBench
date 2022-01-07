
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int dummy; } ;
typedef int clockid_t ;


 int __NR_clock_adjtime ;
 int syscall (int ,int ,struct timex*) ;

__attribute__((used)) static int clock_adjtime(clockid_t id, struct timex *tx)
{
 return syscall(__NR_clock_adjtime, id, tx);
}
