
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fnic {int * data_src_addr; } ;
struct fc_lport {int dummy; } ;


 struct fnic* lport_priv (struct fc_lport*) ;

__attribute__((used)) static u8 *fnic_get_mac(struct fc_lport *lport)
{
 struct fnic *fnic = lport_priv(lport);

 return fnic->data_src_addr;
}
