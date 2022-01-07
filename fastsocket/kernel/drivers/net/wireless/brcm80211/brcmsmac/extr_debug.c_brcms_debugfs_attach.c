
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcms_pub {int dbgfs_dir; TYPE_3__* wlc; } ;
struct TYPE_6__ {TYPE_2__* hw; } ;
struct TYPE_5__ {TYPE_1__* d11core; } ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int PTR_RET (int ) ;
 int debugfs_create_dir (int ,int ) ;
 int dev_name (int *) ;
 int root_folder ;

int brcms_debugfs_attach(struct brcms_pub *drvr)
{
 if (!root_folder)
  return -ENODEV;

 drvr->dbgfs_dir = debugfs_create_dir(
   dev_name(&drvr->wlc->hw->d11core->dev), root_folder);
 return PTR_RET(drvr->dbgfs_dir);
}
