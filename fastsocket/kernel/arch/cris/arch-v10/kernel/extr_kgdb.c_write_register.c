
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ibr; int ccr; } ;
typedef TYPE_1__ registers ;


 int CCR ;
 int E02 ;
 int E05 ;
 int IBR ;
 int MOF ;
 int P0 ;
 int P4 ;
 int P8 ;
 int PC ;
 int R0 ;
 int SUCCESS ;
 int USP ;
 int VR ;
 int hex2mem (unsigned char*,char*,int) ;
 TYPE_1__ reg ;

__attribute__((used)) static int
write_register (int regno, char *val)
{
 int status = SUCCESS;
 registers *current_reg = &reg;

        if (regno >= R0 && regno <= PC) {

  hex2mem ((unsigned char *)current_reg + regno * sizeof(unsigned int),
    val, sizeof(unsigned int));
 }
        else if (regno == P0 || regno == VR || regno == P4 || regno == P8) {

  status = E02;
 }
        else if (regno == CCR) {


  hex2mem ((unsigned char *)&(current_reg->ccr) + (regno-CCR) * sizeof(unsigned short),
    val, sizeof(unsigned short));
 }
 else if (regno >= MOF && regno <= USP) {

  hex2mem ((unsigned char *)&(current_reg->ibr) + (regno-IBR) * sizeof(unsigned int),
    val, sizeof(unsigned int));
 }
        else {

  status = E05;
 }
 return status;
}
