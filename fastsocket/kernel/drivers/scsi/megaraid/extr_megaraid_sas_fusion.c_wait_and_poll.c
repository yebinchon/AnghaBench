
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct megasas_instance {int dummy; } ;
struct megasas_header {int cmd_status; } ;
struct megasas_cmd {TYPE_1__* frame; } ;
struct TYPE_2__ {struct megasas_header hdr; } ;


 int ETIME ;
 int MFI_POLL_TIMEOUT_SECS ;
 int msleep (int) ;
 int rmb () ;

int
wait_and_poll(struct megasas_instance *instance, struct megasas_cmd *cmd)
{
 int i;
 struct megasas_header *frame_hdr = &cmd->frame->hdr;

 u32 msecs = MFI_POLL_TIMEOUT_SECS * 1000;




 for (i = 0; (i < msecs) && (frame_hdr->cmd_status == 0xff); i += 20) {
  rmb();
  msleep(20);
 }

 if (frame_hdr->cmd_status == 0xff)
  return -ETIME;

 return 0;
}
