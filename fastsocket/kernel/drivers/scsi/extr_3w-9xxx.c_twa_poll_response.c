
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ status; } ;
struct TYPE_11__ {scalar_t__ status; int opcode__reserved; } ;
struct TYPE_13__ {TYPE_2__ oldcommand; TYPE_1__ newcommand; } ;
struct TYPE_16__ {TYPE_3__ command; } ;
struct TYPE_15__ {int host; TYPE_6__** command_packet_virt; } ;
struct TYPE_14__ {int response_id; int value; } ;
typedef TYPE_4__ TW_Response_Queue ;
typedef TYPE_5__ TW_Device_Extension ;
typedef TYPE_6__ TW_Command_Full ;


 int TW_DRIVER ;
 scalar_t__ TW_OP_EXECUTE_SCSI ;
 scalar_t__ TW_OP_OUT (int ) ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int TW_RESID_OUT (int ) ;
 int TW_RESPONSE_QUEUE_REG_ADDR (TYPE_5__*) ;
 int TW_STATUS_RESPONSE_QUEUE_EMPTY ;
 int readl (int ) ;
 int twa_fill_sense (TYPE_5__*,int,int ,int ) ;
 scalar_t__ twa_poll_status_gone (TYPE_5__*,int ,int) ;

__attribute__((used)) static int twa_poll_response(TW_Device_Extension *tw_dev, int request_id, int seconds)
{
 int retval = 1, found = 0, response_request_id;
 TW_Response_Queue response_queue;
 TW_Command_Full *full_command_packet = tw_dev->command_packet_virt[request_id];

 if (twa_poll_status_gone(tw_dev, TW_STATUS_RESPONSE_QUEUE_EMPTY, seconds) == 0) {
  response_queue.value = readl(TW_RESPONSE_QUEUE_REG_ADDR(tw_dev));
  response_request_id = TW_RESID_OUT(response_queue.response_id);
  if (request_id != response_request_id) {
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0x1e, "Found unexpected request id while polling for response");
   goto out;
  }
  if (TW_OP_OUT(full_command_packet->command.newcommand.opcode__reserved) == TW_OP_EXECUTE_SCSI) {
   if (full_command_packet->command.newcommand.status != 0) {

    twa_fill_sense(tw_dev, request_id, 0, 0);
    goto out;
   }
   found = 1;
  } else {
   if (full_command_packet->command.oldcommand.status != 0) {

    twa_fill_sense(tw_dev, request_id, 0, 0);
    goto out;
   }
   found = 1;
  }
 }

 if (found)
  retval = 0;
out:
 return retval;
}
