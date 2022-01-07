
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_alpabm_s {int dummy; } ;
struct TYPE_3__ {int alpa_bm; } ;
struct bfa_fcport_s {TYPE_1__ alpabm; int alpabm_valid; int myalpa; } ;
struct TYPE_4__ {int alpa_bm; } ;
struct bfa_fcport_loop_info_s {TYPE_2__ alpabm; int alpabm_val; int myalpa; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
bfa_fcport_update_loop_info(struct bfa_fcport_s *fcport,
   struct bfa_fcport_loop_info_s *loop_info)
{
 fcport->myalpa = loop_info->myalpa;
 fcport->alpabm_valid =
   loop_info->alpabm_val;
 memcpy(fcport->alpabm.alpa_bm,
   loop_info->alpabm.alpa_bm,
   sizeof(struct fc_alpabm_s));
}
