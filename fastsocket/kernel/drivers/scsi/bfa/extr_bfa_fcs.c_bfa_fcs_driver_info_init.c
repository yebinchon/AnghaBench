
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_driver_info_s {int dummy; } ;
struct bfa_fcs_s {int fabric; struct bfa_fcs_driver_info_s driver_info; } ;


 int bfa_fcs_fabric_nsymb_init (int *) ;
 int bfa_fcs_fabric_psymb_init (int *) ;

void
bfa_fcs_driver_info_init(struct bfa_fcs_s *fcs,
   struct bfa_fcs_driver_info_s *driver_info)
{

 fcs->driver_info = *driver_info;

 bfa_fcs_fabric_psymb_init(&fcs->fabric);
 bfa_fcs_fabric_nsymb_init(&fcs->fabric);
}
