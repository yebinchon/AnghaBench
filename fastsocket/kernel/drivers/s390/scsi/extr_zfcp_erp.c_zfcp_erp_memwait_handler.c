
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int dummy; } ;


 int zfcp_erp_notify (struct zfcp_erp_action*,int ) ;

__attribute__((used)) static void zfcp_erp_memwait_handler(unsigned long data)
{
 zfcp_erp_notify((struct zfcp_erp_action *)data, 0);
}
