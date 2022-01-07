
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_cmnd {int sc_data_direction; } ;






 int EINVAL ;
 int FSF_DATADIR_CMND ;
 int FSF_DATADIR_DIF_READ_CONVERT ;
 int FSF_DATADIR_DIF_READ_STRIP ;
 int FSF_DATADIR_DIF_WRITE_CONVERT ;
 int FSF_DATADIR_DIF_WRITE_INSERT ;
 int FSF_DATADIR_READ ;
 int FSF_DATADIR_WRITE ;





 int scsi_get_prot_op (struct scsi_cmnd*) ;

__attribute__((used)) static int zfcp_fsf_set_data_dir(struct scsi_cmnd *scsi_cmnd, u32 *data_dir)
{
 switch (scsi_get_prot_op(scsi_cmnd)) {
 case 132:
  switch (scsi_cmnd->sc_data_direction) {
  case 134:
   *data_dir = FSF_DATADIR_CMND;
   break;
  case 135:
   *data_dir = FSF_DATADIR_READ;
   break;
  case 133:
   *data_dir = FSF_DATADIR_WRITE;
   break;
  case 136:
   return -EINVAL;
  }
  break;

 case 130:
  *data_dir = FSF_DATADIR_DIF_READ_STRIP;
  break;
 case 129:
  *data_dir = FSF_DATADIR_DIF_WRITE_INSERT;
  break;
 case 131:
  *data_dir = FSF_DATADIR_DIF_READ_CONVERT;
  break;
 case 128:
  *data_dir = FSF_DATADIR_DIF_WRITE_CONVERT;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
