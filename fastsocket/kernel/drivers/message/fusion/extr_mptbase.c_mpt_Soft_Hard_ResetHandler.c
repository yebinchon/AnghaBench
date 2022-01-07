
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPT_ADAPTER ;


 int mpt_HardResetHandler (int *,int) ;
 int mpt_SoftResetHandler (int *,int) ;

int
mpt_Soft_Hard_ResetHandler(MPT_ADAPTER *ioc, int sleepFlag) {
 int ret = -1;

 ret = mpt_SoftResetHandler(ioc, sleepFlag);
 if (ret == 0)
  return ret;
 ret = mpt_HardResetHandler(ioc, sleepFlag);
 return ret;
}
