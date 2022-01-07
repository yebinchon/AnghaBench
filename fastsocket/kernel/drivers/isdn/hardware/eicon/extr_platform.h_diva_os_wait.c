
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;


 int mdelay (int ) ;

__attribute__((used)) static __inline__ void diva_os_wait(dword mSec)
{
 mdelay(mSec);
}
