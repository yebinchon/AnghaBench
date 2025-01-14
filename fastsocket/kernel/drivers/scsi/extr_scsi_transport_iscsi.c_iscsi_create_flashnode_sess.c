
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_transport {int dummy; } ;
struct TYPE_3__ {int * parent; int * bus; int * type; } ;
struct iscsi_bus_flash_session {int target_id; struct iscsi_bus_flash_session* dd_data; TYPE_1__ dev; struct iscsi_transport* transport; } ;
struct Scsi_Host {int host_no; int shost_gendev; } ;


 int GFP_KERNEL ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 int device_register (TYPE_1__*) ;
 int iscsi_flashnode_bus ;
 int iscsi_flashnode_sess_dev_type ;
 int kfree (struct iscsi_bus_flash_session*) ;
 struct iscsi_bus_flash_session* kzalloc (int,int ) ;

struct iscsi_bus_flash_session *
iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
       struct iscsi_transport *transport,
       int dd_size)
{
 struct iscsi_bus_flash_session *fnode_sess;
 int err;

 fnode_sess = kzalloc(sizeof(*fnode_sess) + dd_size, GFP_KERNEL);
 if (!fnode_sess)
  return ((void*)0);

 fnode_sess->transport = transport;
 fnode_sess->target_id = index;
 fnode_sess->dev.type = &iscsi_flashnode_sess_dev_type;
 fnode_sess->dev.bus = &iscsi_flashnode_bus;
 fnode_sess->dev.parent = &shost->shost_gendev;
 dev_set_name(&fnode_sess->dev, "flashnode_sess-%u:%u",
       shost->host_no, index);

 err = device_register(&fnode_sess->dev);
 if (err)
  goto free_fnode_sess;

 if (dd_size)
  fnode_sess->dd_data = &fnode_sess[1];

 return fnode_sess;

free_fnode_sess:
 kfree(fnode_sess);
 return ((void*)0);
}
