
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fpsr; } ;
typedef int FPSR ;
typedef TYPE_1__ FPA11 ;


 TYPE_1__* GET_FPA11 () ;
 int MASK_SYSID ;

__attribute__((used)) static inline void writeFPSR(FPSR reg)
{
 FPA11 *fpa11 = GET_FPA11();

 fpa11->fpsr = (fpa11->fpsr & MASK_SYSID) | (reg & ~MASK_SYSID);
}
