
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int status; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_set_mask (int ,int *) ;
 scalar_t__ status_change_set (int ,int *) ;
 int zfcp_dbf_rec_port (char*,int *,struct zfcp_port*) ;

__attribute__((used)) static void zfcp_erp_port_unblock(struct zfcp_port *port)
{
 if (status_change_set(ZFCP_STATUS_COMMON_UNBLOCKED, &port->status))
  zfcp_dbf_rec_port("erpubl1", ((void*)0), port);
 atomic_set_mask(ZFCP_STATUS_COMMON_UNBLOCKED, &port->status);
}
