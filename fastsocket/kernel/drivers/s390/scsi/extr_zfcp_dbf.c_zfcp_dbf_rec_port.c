
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_port {int d_id; int wwpn; int erp_counter; int status; TYPE_1__* adapter; } ;
struct zfcp_dbf {int dummy; } ;
struct TYPE_2__ {struct zfcp_dbf* dbf; } ;


 int zfcp_dbf_rec_target (char*,void*,struct zfcp_dbf*,int *,int *,int ,int ,int ) ;

void zfcp_dbf_rec_port(char *id, void *ref, struct zfcp_port *port)
{
 struct zfcp_dbf *dbf = port->adapter->dbf;

 zfcp_dbf_rec_target(id, ref, dbf, &port->status,
      &port->erp_counter, port->wwpn, port->d_id,
      0);
}
