
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int cfg_restrict_login; scalar_t__ port_type; } ;


 int EINVAL ;
 int KERN_ERR ;
 int LOG_INIT ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int) ;

__attribute__((used)) static int
lpfc_restrict_login_init(struct lpfc_vport *vport, int val)
{
 if (val < 0 || val > 1) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_INIT,
     "0422 lpfc_restrict_login attribute cannot "
     "be set to %d, allowed range is [0, 1]\n",
     val);
  vport->cfg_restrict_login = 1;
  return -EINVAL;
 }
 if (vport->port_type == LPFC_PHYSICAL_PORT) {
  vport->cfg_restrict_login = 0;
  return 0;
 }
 vport->cfg_restrict_login = val;
 return 0;
}
