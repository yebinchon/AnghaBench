
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int srs; int exs; int wz; int pid; int bz; int r0; } ;
struct TYPE_3__ {int s0_0; } ;


 char ACR ;
 char BZ ;
 int E05 ;
 char EXS ;
 char PC ;
 char PID ;
 char R0 ;
 char S0 ;
 char S15 ;
 char SRS ;
 int SUCCESS ;
 char VR ;
 char WZ ;
 TYPE_2__ reg ;
 TYPE_1__ sreg ;

__attribute__((used)) static int
read_register(char regno, unsigned int *valptr)
{
 int status = SUCCESS;




 if (regno >= R0 && regno <= ACR) {

  *valptr = *(unsigned int *)((char *)&reg.r0 + (regno - R0) * sizeof(unsigned int));

 } else if (regno == BZ || regno == VR) {

  *valptr = (unsigned int)(*(unsigned char *)
                                         ((char *)&reg.bz + (regno - BZ) * sizeof(char)));

 } else if (regno == PID) {

  *valptr = *(unsigned int *)((char *)&reg.pid);

 } else if (regno == SRS) {

  *valptr = (unsigned int)(*(unsigned char *)((char *)&reg.srs));

 } else if (regno == WZ) {

  *valptr = (unsigned int)(*(unsigned short *)(char *)&reg.wz);

 } else if (regno >= EXS && regno <= PC) {

  *valptr = *(unsigned int *)((char *)&reg.exs + (regno - EXS) * sizeof(unsigned int));

 } else if (regno >= S0 && regno <= S15) {

  *valptr = *(unsigned int *)((char *)&sreg.s0_0 + (reg.srs * 16 * sizeof(unsigned int)) + (regno - S0) * sizeof(unsigned int));

 } else {

  status = E05;
 }
 return status;

}
