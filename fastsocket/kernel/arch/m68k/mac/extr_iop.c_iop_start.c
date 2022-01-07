
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_iop {int status_ctrl; } ;


 int IOP_AUTOINC ;
 int IOP_RUN ;

__attribute__((used)) static __inline__ void iop_start(volatile struct mac_iop *iop)
{
 iop->status_ctrl = IOP_RUN | IOP_AUTOINC;
}
