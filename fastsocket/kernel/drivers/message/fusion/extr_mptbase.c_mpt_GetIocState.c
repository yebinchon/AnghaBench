
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int last_state; TYPE_1__* chip; } ;
struct TYPE_4__ {int Doorbell; } ;
typedef TYPE_2__ MPT_ADAPTER ;


 int CHIPREG_READ32 (int *) ;
 int MPI_IOC_STATE_MASK ;

u32
mpt_GetIocState(MPT_ADAPTER *ioc, int cooked)
{
 u32 s, sc;


 s = CHIPREG_READ32(&ioc->chip->Doorbell);
 sc = s & MPI_IOC_STATE_MASK;


 ioc->last_state = sc;

 return cooked ? sc : s;
}
