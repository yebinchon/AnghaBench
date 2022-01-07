
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_client_t {int adapter; int demux; int dmxdev; int frontend; int smsclient; int entry; } ;


 int dvb_dmx_release (int *) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int *) ;
 int kfree (struct smsdvb_client_t*) ;
 int list_del (int *) ;
 int smscore_unregister_client (int ) ;

__attribute__((used)) static void smsdvb_unregister_client(struct smsdvb_client_t *client)
{


 list_del(&client->entry);

 smscore_unregister_client(client->smsclient);
 dvb_unregister_frontend(&client->frontend);
 dvb_dmxdev_release(&client->dmxdev);
 dvb_dmx_release(&client->demux);
 dvb_unregister_adapter(&client->adapter);
 kfree(client);
}
