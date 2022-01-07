
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;


 int msleep (int ) ;

__attribute__((used)) static __inline__ void diva_os_sleep(dword mSec)
{
 msleep(mSec);
}
