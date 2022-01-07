
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* wwn; } ;
struct lpfc_name {TYPE_1__ u; } ;
struct lpfc_hba {int dummy; } ;


 int KERN_ERR ;
 int LOG_VPORT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,char const*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static int
lpfc_valid_wwn_format(struct lpfc_hba *phba, struct lpfc_name *wwn,
        const char *name_type)
{



 if (!((wwn->u.wwn[0] >> 4) == 1 &&
       ((wwn->u.wwn[0] & 0xf) != 0 || (wwn->u.wwn[1] & 0xf) != 0)))
  return 1;

 lpfc_printf_log(phba, KERN_ERR, LOG_VPORT,
   "1822 Invalid %s: %02x:%02x:%02x:%02x:"
   "%02x:%02x:%02x:%02x\n",
   name_type,
   wwn->u.wwn[0], wwn->u.wwn[1],
   wwn->u.wwn[2], wwn->u.wwn[3],
   wwn->u.wwn[4], wwn->u.wwn[5],
   wwn->u.wwn[6], wwn->u.wwn[7]);
 return 0;
}
