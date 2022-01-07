
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_port {int status; scalar_t__ wwpn; TYPE_2__* adapter; int erp_counter; } ;
struct TYPE_4__ {TYPE_1__* ccw_device; } ;
struct TYPE_3__ {int dev; } ;


 int ZFCP_ERP_EXIT ;


 int ZFCP_MAX_ERPS ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_NOESC ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,unsigned long long) ;
 int zfcp_erp_port_block (struct zfcp_port*,int ) ;
 int zfcp_erp_port_failed (struct zfcp_port*,char*,int *) ;
 int zfcp_erp_port_unblock (struct zfcp_port*) ;

__attribute__((used)) static int zfcp_erp_strategy_check_port(struct zfcp_port *port, int result)
{
 switch (result) {
 case 128 :
  atomic_set(&port->erp_counter, 0);
  zfcp_erp_port_unblock(port);
  break;

 case 129 :
  if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_NOESC) {
   zfcp_erp_port_block(port, 0);
   result = ZFCP_ERP_EXIT;
  }
  atomic_inc(&port->erp_counter);
  if (atomic_read(&port->erp_counter) > ZFCP_MAX_ERPS) {
   dev_err(&port->adapter->ccw_device->dev,
    "ERP failed for remote port 0x%016Lx\n",
    (unsigned long long)port->wwpn);
   zfcp_erp_port_failed(port, "erpsck1", ((void*)0));
  }
  break;
 }

 if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
  zfcp_erp_port_block(port, 0);
  result = ZFCP_ERP_EXIT;
 }
 return result;
}
