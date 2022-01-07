
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_wka_port {int work; int mutex; int refcount; int status; int d_id; struct zfcp_adapter* adapter; int completion_wq; } ;
struct zfcp_adapter {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int ZFCP_WKA_PORT_OFFLINE ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int zfcp_fc_wka_port_offline ;

__attribute__((used)) static void zfcp_fc_wka_port_init(struct zfcp_wka_port *wka_port, u32 d_id,
      struct zfcp_adapter *adapter)
{
 init_waitqueue_head(&wka_port->completion_wq);

 wka_port->adapter = adapter;
 wka_port->d_id = d_id;

 wka_port->status = ZFCP_WKA_PORT_OFFLINE;
 atomic_set(&wka_port->refcount, 0);
 mutex_init(&wka_port->mutex);
 INIT_DELAYED_WORK(&wka_port->work, zfcp_fc_wka_port_offline);
}
