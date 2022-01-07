
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taos_data {int adapter; scalar_t__ client; } ;
struct serio {int dev; } ;


 int dev_dbg (int *,char*) ;
 int i2c_del_adapter (int *) ;
 int i2c_unregister_device (scalar_t__) ;
 int kfree (struct taos_data*) ;
 int serio_close (struct serio*) ;
 struct taos_data* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void taos_disconnect(struct serio *serio)
{
 struct taos_data *taos = serio_get_drvdata(serio);

 if (taos->client)
  i2c_unregister_device(taos->client);
 i2c_del_adapter(&taos->adapter);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 kfree(taos);

 dev_dbg(&serio->dev, "Disconnected from TAOS EVM\n");
}
