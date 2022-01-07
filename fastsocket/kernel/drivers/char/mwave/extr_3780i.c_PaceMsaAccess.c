
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cond_resched () ;
 int udelay (int) ;

__attribute__((used)) static void PaceMsaAccess(unsigned short usDspBaseIO)
{
 cond_resched();
 udelay(100);
 cond_resched();
}
