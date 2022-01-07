
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dummy; } ;


 int ZFCP_CLEAR ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int zfcp_erp_modify_port_status (struct zfcp_port*,char*,int *,int,int ) ;

__attribute__((used)) static void zfcp_erp_port_block(struct zfcp_port *port, int clear)
{
 zfcp_erp_modify_port_status(port, "erpblk1", ((void*)0),
        ZFCP_STATUS_COMMON_UNBLOCKED | clear,
        ZFCP_CLEAR);
}
