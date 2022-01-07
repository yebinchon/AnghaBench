
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bus_flash_session {int dev; } ;
struct device {int dummy; } ;


 struct device* device_find_child (int *,int *,int ) ;
 int iscsi_is_flashnode_conn_dev ;

struct device *
iscsi_find_flashnode_conn(struct iscsi_bus_flash_session *fnode_sess)
{
 return device_find_child(&fnode_sess->dev, ((void*)0),
     iscsi_is_flashnode_conn_dev);
}
