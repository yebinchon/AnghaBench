
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* close ) (TYPE_1__*) ;} ;
struct TYPE_4__ {TYPE_1__ dmx; } ;
struct pt1_adapter {scalar_t__ buf; int adap; TYPE_2__ demux; int dmxdev; int net; } ;


 int dvb_dmx_release (TYPE_2__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int free_page (unsigned long) ;
 int kfree (struct pt1_adapter*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void pt1_free_adapter(struct pt1_adapter *adap)
{
 dvb_net_release(&adap->net);
 adap->demux.dmx.close(&adap->demux.dmx);
 dvb_dmxdev_release(&adap->dmxdev);
 dvb_dmx_release(&adap->demux);
 dvb_unregister_adapter(&adap->adap);
 free_page((unsigned long)adap->buf);
 kfree(adap);
}
