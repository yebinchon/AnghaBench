
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bus_flash_session {struct iscsi_bus_flash_session* portal_type; struct iscsi_bus_flash_session* targetalias; struct iscsi_bus_flash_session* targetname; } ;
struct device {int dummy; } ;


 struct iscsi_bus_flash_session* iscsi_dev_to_flash_session (struct device*) ;
 int kfree (struct iscsi_bus_flash_session*) ;

__attribute__((used)) static void iscsi_flashnode_sess_release(struct device *dev)
{
 struct iscsi_bus_flash_session *fnode_sess =
      iscsi_dev_to_flash_session(dev);

 kfree(fnode_sess->targetname);
 kfree(fnode_sess->targetalias);
 kfree(fnode_sess->portal_type);
 kfree(fnode_sess);
}
