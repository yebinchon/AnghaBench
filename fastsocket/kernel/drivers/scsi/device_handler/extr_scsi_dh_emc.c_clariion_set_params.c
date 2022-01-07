
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct clariion_dh_data {scalar_t__ lun_state; int flags; } ;


 int CLARIION_HONOR_RESERVATIONS ;
 scalar_t__ CLARIION_LUN_OWNED ;
 scalar_t__ CLARIION_LUN_UNINITIALIZED ;
 int CLARIION_SHORT_TRESPASS ;
 int EINVAL ;
 int SCSI_DH_OK ;
 int clariion_send_inquiry (struct scsi_device*,struct clariion_dh_data*) ;
 struct clariion_dh_data* get_clariion_data (struct scsi_device*) ;
 int send_trespass_cmd (struct scsi_device*,struct clariion_dh_data*) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static int clariion_set_params(struct scsi_device *sdev, const char *params)
{
 struct clariion_dh_data *csdev = get_clariion_data(sdev);
 unsigned int hr = 0, st = 0, argc;
 const char *p = params;
 int result = SCSI_DH_OK;

 if ((sscanf(params, "%u", &argc) != 1) || (argc != 2))
  return -EINVAL;

 while (*p++)
  ;
 if ((sscanf(p, "%u", &st) != 1) || (st > 1))
  return -EINVAL;

 while (*p++)
  ;
 if ((sscanf(p, "%u", &hr) != 1) || (hr > 1))
  return -EINVAL;

 if (st)
  csdev->flags |= CLARIION_SHORT_TRESPASS;
 else
  csdev->flags &= ~CLARIION_SHORT_TRESPASS;

 if (hr)
  csdev->flags |= CLARIION_HONOR_RESERVATIONS;
 else
  csdev->flags &= ~CLARIION_HONOR_RESERVATIONS;






 if (csdev->lun_state != CLARIION_LUN_OWNED)
  goto done;

 csdev->lun_state = CLARIION_LUN_UNINITIALIZED;
 result = send_trespass_cmd(sdev, csdev);
 if (result != SCSI_DH_OK)
  goto done;


 result = clariion_send_inquiry(sdev, csdev);

done:
 return result;
}
