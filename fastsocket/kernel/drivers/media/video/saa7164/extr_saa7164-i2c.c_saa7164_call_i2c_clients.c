
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7164_i2c {scalar_t__ i2c_rc; int i2c_adap; } ;


 int i2c_clients_command (int *,unsigned int,void*) ;

void saa7164_call_i2c_clients(struct saa7164_i2c *bus, unsigned int cmd,
 void *arg)
{
 if (bus->i2c_rc != 0)
  return;

 i2c_clients_command(&bus->i2c_adap, cmd, arg);
}
