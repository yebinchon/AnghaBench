
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int done; int status; int reply; } ;
struct MPT3SAS_ADAPTER {TYPE_1__ base_cmds; } ;
struct TYPE_6__ {scalar_t__ Function; int MsgLength; } ;
typedef TYPE_2__ MPI2DefaultReply_t ;


 scalar_t__ MPI2_FUNCTION_EVENT_ACK ;
 int MPT3_CMD_COMPLETE ;
 int MPT3_CMD_NOT_USED ;
 int MPT3_CMD_PENDING ;
 int MPT3_CMD_REPLY_VALID ;
 int complete (int *) ;
 int memcpy (int ,TYPE_2__*,int) ;
 TYPE_2__* mpt3sas_base_get_reply_virt_addr (struct MPT3SAS_ADAPTER*,int ) ;

u8
mpt3sas_base_done(struct MPT3SAS_ADAPTER *ioc, u16 smid, u8 msix_index,
 u32 reply)
{
 MPI2DefaultReply_t *mpi_reply;

 mpi_reply = mpt3sas_base_get_reply_virt_addr(ioc, reply);
 if (mpi_reply && mpi_reply->Function == MPI2_FUNCTION_EVENT_ACK)
  return 1;

 if (ioc->base_cmds.status == MPT3_CMD_NOT_USED)
  return 1;

 ioc->base_cmds.status |= MPT3_CMD_COMPLETE;
 if (mpi_reply) {
  ioc->base_cmds.status |= MPT3_CMD_REPLY_VALID;
  memcpy(ioc->base_cmds.reply, mpi_reply, mpi_reply->MsgLength*4);
 }
 ioc->base_cmds.status &= ~MPT3_CMD_PENDING;

 complete(&ioc->base_cmds.done);
 return 1;
}
