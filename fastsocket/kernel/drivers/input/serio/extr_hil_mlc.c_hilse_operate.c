
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int opercnt; } ;
typedef TYPE_1__ hil_mlc ;


 int hil_mlc_send_polls (TYPE_1__*) ;
 scalar_t__ hil_mlcs_probe ;

__attribute__((used)) static int hilse_operate(hil_mlc *mlc, int repoll)
{

 if (mlc->opercnt == 0)
  hil_mlcs_probe = 0;
 mlc->opercnt = 1;

 hil_mlc_send_polls(mlc);

 if (!hil_mlcs_probe)
  return 0;
 hil_mlcs_probe = 0;
 mlc->opercnt = 0;
 return 1;
}
