
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int status; } ;


 int ZFCP_STATUS_COMMON_ACCESS_DENIED ;
 int atomic_clear_mask (int ,int *) ;

__attribute__((used)) static void zfcp_erp_port_strategy_clearstati(struct zfcp_port *port)
{
 atomic_clear_mask(ZFCP_STATUS_COMMON_ACCESS_DENIED, &port->status);
}
