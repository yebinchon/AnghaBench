
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int host; } ;
struct TYPE_2__ {int adv_dvc_var; int asc_dvc_var; } ;
struct asc_board {TYPE_1__ dvc_var; } ;


 scalar_t__ ASC_NARROW_BOARD (struct asc_board*) ;
 int advansys_narrow_slave_configure (struct scsi_device*,int *) ;
 int advansys_wide_slave_configure (struct scsi_device*,int *) ;
 struct asc_board* shost_priv (int ) ;

__attribute__((used)) static int advansys_slave_configure(struct scsi_device *sdev)
{
 struct asc_board *boardp = shost_priv(sdev->host);

 if (ASC_NARROW_BOARD(boardp))
  advansys_narrow_slave_configure(sdev,
      &boardp->dvc_var.asc_dvc_var);
 else
  advansys_wide_slave_configure(sdev,
      &boardp->dvc_var.adv_dvc_var);

 return 0;
}
