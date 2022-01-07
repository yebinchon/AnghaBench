
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_unit {int status; TYPE_3__* port; scalar_t__ fcp_lun; int erp_counter; } ;
struct TYPE_6__ {scalar_t__ wwpn; TYPE_2__* adapter; } ;
struct TYPE_5__ {TYPE_1__* ccw_device; } ;
struct TYPE_4__ {int dev; } ;


 int ZFCP_ERP_EXIT ;


 int ZFCP_MAX_ERPS ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,unsigned long long,unsigned long long) ;
 int zfcp_erp_unit_block (struct zfcp_unit*,int ) ;
 int zfcp_erp_unit_failed (struct zfcp_unit*,char*,int *) ;
 int zfcp_erp_unit_unblock (struct zfcp_unit*) ;

__attribute__((used)) static int zfcp_erp_strategy_check_unit(struct zfcp_unit *unit, int result)
{
 switch (result) {
 case 128 :
  atomic_set(&unit->erp_counter, 0);
  zfcp_erp_unit_unblock(unit);
  break;
 case 129 :
  atomic_inc(&unit->erp_counter);
  if (atomic_read(&unit->erp_counter) > ZFCP_MAX_ERPS) {
   dev_err(&unit->port->adapter->ccw_device->dev,
    "ERP failed for unit 0x%016Lx on "
    "port 0x%016Lx\n",
    (unsigned long long)unit->fcp_lun,
    (unsigned long long)unit->port->wwpn);
   zfcp_erp_unit_failed(unit, "erusck1", ((void*)0));
  }
  break;
 }

 if (atomic_read(&unit->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
  zfcp_erp_unit_block(unit, 0);
  result = ZFCP_ERP_EXIT;
 }
 return result;
}
