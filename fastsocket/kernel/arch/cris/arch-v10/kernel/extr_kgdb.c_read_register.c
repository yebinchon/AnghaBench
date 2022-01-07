
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p8; int p4; int p0; } ;
typedef TYPE_1__ registers ;


 char CCR ;
 int E05 ;
 char MOF ;
 char P0 ;
 char P4 ;
 char P8 ;
 char PC ;
 char R0 ;
 int SUCCESS ;
 char USP ;
 char VR ;
 int consistency_status ;
 TYPE_1__ reg ;

__attribute__((used)) static int
read_register (char regno, unsigned int *valptr)
{
 registers *current_reg = &reg;

 if (regno >= R0 && regno <= PC) {

  *valptr = *(unsigned int *)((char *)current_reg + regno * sizeof(unsigned int));
                return SUCCESS;
 }
 else if (regno == P0 || regno == VR) {

  *valptr = (unsigned int)(*(unsigned char *)
                                         ((char *)&(current_reg->p0) + (regno-P0) * sizeof(char)));
                return SUCCESS;
 }
 else if (regno == P4 || regno == CCR) {

  *valptr = (unsigned int)(*(unsigned short *)
                                         ((char *)&(current_reg->p4) + (regno-P4) * sizeof(unsigned short)));
                return SUCCESS;
 }
 else if (regno >= MOF && regno <= USP) {

  *valptr = *(unsigned int *)((char *)&(current_reg->p8)
                                            + (regno-P8) * sizeof(unsigned int));
                return SUCCESS;
 }
 else {

  consistency_status = E05;
  return E05;
 }
}
