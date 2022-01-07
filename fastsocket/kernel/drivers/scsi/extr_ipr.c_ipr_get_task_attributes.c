
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int dummy; } ;


 int IPR_FLAGS_LO_HEAD_OF_Q_TASK ;
 int IPR_FLAGS_LO_ORDERED_TASK ;
 int IPR_FLAGS_LO_SIMPLE_TASK ;
 int IPR_FLAGS_LO_UNTAGGED_TASK ;



 scalar_t__ scsi_populate_tag_msg (struct scsi_cmnd*,int*) ;

__attribute__((used)) static u8 ipr_get_task_attributes(struct scsi_cmnd *scsi_cmd)
{
 u8 tag[2];
 u8 rc = IPR_FLAGS_LO_UNTAGGED_TASK;

 if (scsi_populate_tag_msg(scsi_cmd, tag)) {
  switch (tag[0]) {
  case 128:
   rc = IPR_FLAGS_LO_SIMPLE_TASK;
   break;
  case 130:
   rc = IPR_FLAGS_LO_HEAD_OF_Q_TASK;
   break;
  case 129:
   rc = IPR_FLAGS_LO_ORDERED_TASK;
   break;
  };
 }

 return rc;
}
