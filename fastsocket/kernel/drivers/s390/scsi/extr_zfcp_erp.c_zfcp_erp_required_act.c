
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int status; } ;
struct zfcp_port {int status; } ;
struct zfcp_adapter {int status; } ;






 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_read (int *) ;

__attribute__((used)) static int zfcp_erp_required_act(int want, struct zfcp_adapter *adapter,
     struct zfcp_port *port,
     struct zfcp_unit *unit)
{
 int need = want;
 int u_status, p_status, a_status;

 switch (want) {
 case 128:
  u_status = atomic_read(&unit->status);
  if (u_status & ZFCP_STATUS_COMMON_ERP_INUSE)
   return 0;
  p_status = atomic_read(&port->status);
  if (!(p_status & ZFCP_STATUS_COMMON_RUNNING) ||
        p_status & ZFCP_STATUS_COMMON_ERP_FAILED)
   return 0;
  if (!(p_status & ZFCP_STATUS_COMMON_UNBLOCKED))
   need = 130;

 case 129:
  p_status = atomic_read(&port->status);
  if (!(p_status & ZFCP_STATUS_COMMON_OPEN))
   need = 130;

 case 130:
  p_status = atomic_read(&port->status);
  if (p_status & ZFCP_STATUS_COMMON_ERP_INUSE)
   return 0;
  a_status = atomic_read(&adapter->status);
  if (!(a_status & ZFCP_STATUS_COMMON_RUNNING) ||
        a_status & ZFCP_STATUS_COMMON_ERP_FAILED)
   return 0;
  if (!(a_status & ZFCP_STATUS_COMMON_UNBLOCKED))
   need = 131;

 case 131:
  a_status = atomic_read(&adapter->status);
  if (a_status & ZFCP_STATUS_COMMON_ERP_INUSE)
   return 0;
  if (!(a_status & ZFCP_STATUS_COMMON_RUNNING) &&
      !(a_status & ZFCP_STATUS_COMMON_OPEN))
   return 0;
 }

 return need;
}
