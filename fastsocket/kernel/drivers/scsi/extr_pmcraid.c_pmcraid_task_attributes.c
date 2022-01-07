
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int dummy; } ;





 int TASK_TAG_ORDERED ;
 int TASK_TAG_QUEUE_HEAD ;
 int TASK_TAG_SIMPLE ;
 scalar_t__ scsi_populate_tag_msg (struct scsi_cmnd*,char*) ;

__attribute__((used)) static u8 pmcraid_task_attributes(struct scsi_cmnd *scsi_cmd)
{
 char tag[2];
 u8 rc = 0;

 if (scsi_populate_tag_msg(scsi_cmd, tag)) {
  switch (tag[0]) {
  case 128:
   rc = TASK_TAG_SIMPLE;
   break;
  case 130:
   rc = TASK_TAG_QUEUE_HEAD;
   break;
  case 129:
   rc = TASK_TAG_ORDERED;
   break;
  };
 }

 return rc;
}
