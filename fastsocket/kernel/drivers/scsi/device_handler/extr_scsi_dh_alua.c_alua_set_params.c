
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct alua_dh_data {int flags; } ;


 int ALUA_OPTIMIZE_STPG ;
 int EINVAL ;
 int SCSI_DH_OK ;
 struct alua_dh_data* get_alua_data (struct scsi_device*) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static int alua_set_params(struct scsi_device *sdev, const char *params)
{
 struct alua_dh_data *h = get_alua_data(sdev);
 unsigned int optimize = 0, argc;
 const char *p = params;
 int result = SCSI_DH_OK;

 if ((sscanf(params, "%u", &argc) != 1) || (argc != 1))
  return -EINVAL;

 while (*p++)
  ;
 if ((sscanf(p, "%u", &optimize) != 1) || (optimize > 1))
  return -EINVAL;

 if (optimize)
  h->flags |= ALUA_OPTIMIZE_STPG;
 else
  h->flags &= ~ALUA_OPTIMIZE_STPG;

 return result;
}
