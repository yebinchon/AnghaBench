
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bus_flash_session {int target_id; } ;
struct device {int dummy; } ;


 struct iscsi_bus_flash_session* iscsi_dev_to_flash_session (struct device*) ;
 int iscsi_flashnode_bus_match (struct device*,int *) ;

__attribute__((used)) static int flashnode_match_index(struct device *dev, void *data)
{
 struct iscsi_bus_flash_session *fnode_sess = ((void*)0);
 int ret = 0;

 if (!iscsi_flashnode_bus_match(dev, ((void*)0)))
  goto exit_match_index;

 fnode_sess = iscsi_dev_to_flash_session(dev);
 ret = (fnode_sess->target_id == *((int *)data)) ? 1 : 0;

exit_match_index:
 return ret;
}
