
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {scalar_t__ smid; int done; int status; int reply; } ;
struct MPT2SAS_ADAPTER {TYPE_1__ tm_cmds; } ;
struct TYPE_6__ {int MsgLength; } ;
typedef TYPE_2__ MPI2DefaultReply_t ;


 int MPT2_CMD_COMPLETE ;
 int MPT2_CMD_NOT_USED ;
 int MPT2_CMD_PENDING ;
 int MPT2_CMD_REPLY_VALID ;
 int complete (int *) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int mpt2sas_base_flush_reply_queues (struct MPT2SAS_ADAPTER*) ;
 TYPE_2__* mpt2sas_base_get_reply_virt_addr (struct MPT2SAS_ADAPTER*,int ) ;

__attribute__((used)) static u8
_scsih_tm_done(struct MPT2SAS_ADAPTER *ioc, u16 smid, u8 msix_index, u32 reply)
{
 MPI2DefaultReply_t *mpi_reply;

 if (ioc->tm_cmds.status == MPT2_CMD_NOT_USED)
  return 1;
 if (ioc->tm_cmds.smid != smid)
  return 1;
 mpt2sas_base_flush_reply_queues(ioc);
 ioc->tm_cmds.status |= MPT2_CMD_COMPLETE;
 mpi_reply = mpt2sas_base_get_reply_virt_addr(ioc, reply);
 if (mpi_reply) {
  memcpy(ioc->tm_cmds.reply, mpi_reply, mpi_reply->MsgLength*4);
  ioc->tm_cmds.status |= MPT2_CMD_REPLY_VALID;
 }
 ioc->tm_cmds.status &= ~MPT2_CMD_PENDING;
 complete(&ioc->tm_cmds.done);
 return 1;
}
