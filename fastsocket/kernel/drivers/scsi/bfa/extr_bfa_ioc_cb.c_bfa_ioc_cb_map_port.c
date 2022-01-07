
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int port_id; } ;


 int bfa_ioc_pcifn (struct bfa_ioc_s*) ;
 int bfa_trc (struct bfa_ioc_s*,int ) ;

__attribute__((used)) static void
bfa_ioc_cb_map_port(struct bfa_ioc_s *ioc)
{



 ioc->port_id = bfa_ioc_pcifn(ioc);

 bfa_trc(ioc, ioc->port_id);
}
