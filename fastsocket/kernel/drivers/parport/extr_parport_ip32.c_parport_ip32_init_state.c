
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dcr; int ecr; } ;
struct TYPE_4__ {TYPE_1__ ip32; } ;
struct parport_state {TYPE_2__ u; } ;
struct pardevice {int dummy; } ;


 int DCR_SELECT ;
 int DCR_nINIT ;
 int ECR_MODE_PS2 ;
 int ECR_SERVINTR ;
 int ECR_nERRINTR ;

__attribute__((used)) static void parport_ip32_init_state(struct pardevice *dev,
        struct parport_state *s)
{
 s->u.ip32.dcr = DCR_SELECT | DCR_nINIT;
 s->u.ip32.ecr = ECR_MODE_PS2 | ECR_nERRINTR | ECR_SERVINTR;
}
