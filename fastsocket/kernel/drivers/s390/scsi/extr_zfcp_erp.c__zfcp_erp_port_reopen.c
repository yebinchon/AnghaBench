
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int adapter; int status; } ;


 int EIO ;
 int ZFCP_ERP_ACTION_REOPEN_PORT ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_read (int *) ;
 int zfcp_erp_action_enqueue (int ,int ,struct zfcp_port*,int *,char*,void*) ;
 int zfcp_erp_port_block (struct zfcp_port*,int) ;
 int zfcp_erp_port_failed (struct zfcp_port*,char*,int *) ;
 int zfcp_scsi_schedule_rport_block (struct zfcp_port*) ;

__attribute__((used)) static int _zfcp_erp_port_reopen(struct zfcp_port *port, int clear, char *id,
     void *ref)
{
 zfcp_erp_port_block(port, clear);
 zfcp_scsi_schedule_rport_block(port);

 if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {

  zfcp_erp_port_failed(port, "erpreo1", ((void*)0));
  return -EIO;
 }

 return zfcp_erp_action_enqueue(ZFCP_ERP_ACTION_REOPEN_PORT,
           port->adapter, port, ((void*)0), id, ref);
}
