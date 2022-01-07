
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fcoe_port {int data_src_addr; } ;
struct fc_lport {int dummy; } ;


 int ETH_ALEN ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void bnx2fc_update_src_mac(struct fc_lport *lport, u8 *addr)
{
 struct fcoe_port *port = lport_priv(lport);

 memcpy(port->data_src_addr, addr, ETH_ALEN);
}
