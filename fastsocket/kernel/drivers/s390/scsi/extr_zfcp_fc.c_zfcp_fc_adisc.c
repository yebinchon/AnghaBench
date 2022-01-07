
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_port {int d_id; struct zfcp_adapter* adapter; } ;
struct zfcp_ls_adisc {int dummy; } ;
struct TYPE_4__ {unsigned long handler_data; int ls_code; int handler; int d_id; struct zfcp_port* port; struct zfcp_adapter* adapter; int * resp; int * req; } ;
struct TYPE_6__ {int nport_id; int wwnn; int wwpn; int code; } ;
struct zfcp_els_adisc {TYPE_1__ els; TYPE_3__ ls_adisc; TYPE_3__ ls_adisc_acc; int resp; int req; } ;
struct zfcp_adapter {int scsi_host; } ;
struct TYPE_5__ {int adisc_cache; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int ZFCP_FC_CTELS_TMO ;
 int ZFCP_LS_ADISC ;
 int fc_host_node_name (int ) ;
 int fc_host_port_id (int ) ;
 int fc_host_port_name (int ) ;
 int kmem_cache_free (int ,struct zfcp_els_adisc*) ;
 struct zfcp_els_adisc* kmem_cache_zalloc (int ,int ) ;
 int sg_init_one (int *,TYPE_3__*,int) ;
 TYPE_2__ zfcp_data ;
 int zfcp_fc_adisc_handler ;
 int zfcp_fsf_send_els (TYPE_1__*,int ) ;

__attribute__((used)) static int zfcp_fc_adisc(struct zfcp_port *port)
{
 struct zfcp_els_adisc *adisc;
 struct zfcp_adapter *adapter = port->adapter;
 int ret;

 adisc = kmem_cache_zalloc(zfcp_data.adisc_cache, GFP_ATOMIC);
 if (!adisc)
  return -ENOMEM;

 adisc->els.req = &adisc->req;
 adisc->els.resp = &adisc->resp;
 sg_init_one(adisc->els.req, &adisc->ls_adisc,
      sizeof(struct zfcp_ls_adisc));
 sg_init_one(adisc->els.resp, &adisc->ls_adisc_acc,
      sizeof(struct zfcp_ls_adisc));

 adisc->els.adapter = adapter;
 adisc->els.port = port;
 adisc->els.d_id = port->d_id;
 adisc->els.handler = zfcp_fc_adisc_handler;
 adisc->els.handler_data = (unsigned long) adisc;
 adisc->els.ls_code = adisc->ls_adisc.code = ZFCP_LS_ADISC;



 adisc->ls_adisc.wwpn = fc_host_port_name(adapter->scsi_host);
 adisc->ls_adisc.wwnn = fc_host_node_name(adapter->scsi_host);
 adisc->ls_adisc.nport_id = fc_host_port_id(adapter->scsi_host);

 ret = zfcp_fsf_send_els(&adisc->els, ZFCP_FC_CTELS_TMO);
 if (ret)
  kmem_cache_free(zfcp_data.adisc_cache, adisc);

 return ret;
}
