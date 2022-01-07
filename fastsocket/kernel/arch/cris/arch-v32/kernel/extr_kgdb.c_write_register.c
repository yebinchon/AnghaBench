
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int srs; int exs; int pid; int r0; } ;
struct TYPE_3__ {int s0_0; } ;


 int ACR ;
 int BZ ;
 int DZ ;
 int E02 ;
 int E05 ;
 int EXS ;
 int PC ;
 int PID ;
 int R0 ;
 int S0 ;
 int S15 ;
 int SPC ;
 int SRS ;
 int SUCCESS ;
 int VR ;
 int WZ ;
 int hex2mem (unsigned char*,char*,int) ;
 TYPE_2__ reg ;
 TYPE_1__ sreg ;

__attribute__((used)) static int
write_register(int regno, char *val)
{
 int status = SUCCESS;

        if (regno >= R0 && regno <= ACR) {

  hex2mem((unsigned char *)&reg.r0 + (regno - R0) * sizeof(unsigned int),
   val, sizeof(unsigned int));

 } else if (regno == BZ || regno == VR || regno == WZ || regno == DZ) {

  status = E02;

 } else if (regno == PID) {


  hex2mem((unsigned char *)&reg.pid, val, sizeof(unsigned int));

 } else if (regno == SRS) {

  hex2mem((unsigned char *)&reg.srs, val, sizeof(unsigned char));

 } else if (regno >= EXS && regno <= SPC) {

  hex2mem((unsigned char *)&reg.exs + (regno - EXS) * sizeof(unsigned int),
    val, sizeof(unsigned int));

       } else if (regno == PC) {

               status = E02;

       } else if (regno >= S0 && regno <= S15) {

               hex2mem((unsigned char *)&sreg.s0_0 + (reg.srs * 16 * sizeof(unsigned int)) + (regno - S0) * sizeof(unsigned int), val, sizeof(unsigned int));
 } else {

  status = E05;
 }
 return status;
}
