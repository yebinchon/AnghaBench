
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_port {scalar_t__ wwpn; int status; scalar_t__ wwnn; } ;
struct zfcp_ls_adisc {scalar_t__ wwpn; scalar_t__ wwnn; } ;
struct TYPE_3__ {scalar_t__ status; struct zfcp_port* port; } ;
struct zfcp_els_adisc {TYPE_1__ els; struct zfcp_ls_adisc ls_adisc_acc; } ;
struct TYPE_4__ {int adisc_cache; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_PORT_LINK_TEST ;
 int atomic_clear_mask (int ,int *) ;
 int atomic_read (int *) ;
 int kmem_cache_free (int ,struct zfcp_els_adisc*) ;
 TYPE_2__ zfcp_data ;
 int zfcp_erp_port_forced_reopen (struct zfcp_port*,int ,char*,int *) ;
 int zfcp_erp_port_reopen (struct zfcp_port*,int ,char*,int *) ;
 int zfcp_port_put (struct zfcp_port*) ;
 int zfcp_scsi_schedule_rport_register (struct zfcp_port*) ;

__attribute__((used)) static void zfcp_fc_adisc_handler(unsigned long data)
{
 struct zfcp_els_adisc *adisc = (struct zfcp_els_adisc *) data;
 struct zfcp_port *port = adisc->els.port;
 struct zfcp_ls_adisc *ls_adisc = &adisc->ls_adisc_acc;

 if (adisc->els.status) {

  zfcp_erp_port_forced_reopen(port, ZFCP_STATUS_COMMON_ERP_FAILED,
         "fcadh_1", ((void*)0));
  goto out;
 }

 if (!port->wwnn)
  port->wwnn = ls_adisc->wwnn;

 if ((port->wwpn != ls_adisc->wwpn) ||
     !(atomic_read(&port->status) & ZFCP_STATUS_COMMON_OPEN)) {
  zfcp_erp_port_reopen(port, ZFCP_STATUS_COMMON_ERP_FAILED,
         "fcadh_2", ((void*)0));
  goto out;
 }


 zfcp_scsi_schedule_rport_register(port);
 out:
 atomic_clear_mask(ZFCP_STATUS_PORT_LINK_TEST, &port->status);
 zfcp_port_put(port);
 kmem_cache_free(zfcp_data.adisc_cache, adisc);
}
