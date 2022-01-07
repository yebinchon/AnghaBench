
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int port; int disco_list_node; int rphy; int state; } ;
struct asd_sas_port {int destroy_list; } ;


 int DISCE_DESTRUCT ;
 int SAS_DEV_DESTROY ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int sas_discover_event (int ,int ) ;
 int sas_rphy_free (int ) ;
 int sas_rphy_unlink (int ) ;
 int sas_unregister_common_dev (struct asd_sas_port*,struct domain_device*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void sas_unregister_dev(struct asd_sas_port *port, struct domain_device *dev)
{
 if (!test_bit(SAS_DEV_DESTROY, &dev->state) &&
     !list_empty(&dev->disco_list_node)) {

  list_del_init(&dev->disco_list_node);
  sas_rphy_free(dev->rphy);
  sas_unregister_common_dev(port, dev);
  return;
 }

 if (!test_and_set_bit(SAS_DEV_DESTROY, &dev->state)) {
  sas_rphy_unlink(dev->rphy);
  list_move_tail(&dev->disco_list_node, &port->destroy_list);
  sas_discover_event(dev->port, DISCE_DESTRUCT);
 }
}
