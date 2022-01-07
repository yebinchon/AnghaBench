
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int dummy; } ;
struct asd_sas_port {int id; int dev_list_lock; struct sas_ha_struct* ha; int phy_list; int phy_list_lock; int destroy_list; int disco_list; int dev_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct asd_sas_port*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void sas_init_port(struct asd_sas_port *port,
     struct sas_ha_struct *sas_ha, int i)
{
 memset(port, 0, sizeof(*port));
 port->id = i;
 INIT_LIST_HEAD(&port->dev_list);
 INIT_LIST_HEAD(&port->disco_list);
 INIT_LIST_HEAD(&port->destroy_list);
 spin_lock_init(&port->phy_list_lock);
 INIT_LIST_HEAD(&port->phy_list);
 port->ha = sas_ha;

 spin_lock_init(&port->dev_list_lock);
}
