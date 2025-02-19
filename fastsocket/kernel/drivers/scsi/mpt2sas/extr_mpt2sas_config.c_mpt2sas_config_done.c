
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ smid; int done; int status; int reply; } ;
struct MPT2SAS_ADAPTER {TYPE_1__ config_cmds; } ;
struct TYPE_7__ {int MsgLength; } ;
typedef TYPE_2__ MPI2DefaultReply_t ;


 int MPT2_CMD_COMPLETE ;
 int MPT2_CMD_NOT_USED ;
 int MPT2_CMD_PENDING ;
 int MPT2_CMD_REPLY_VALID ;
 scalar_t__ USHORT_MAX ;
 int _config_display_some_debug (struct MPT2SAS_ADAPTER*,scalar_t__,char*,TYPE_2__*) ;
 int complete (int *) ;
 int memcpy (int ,TYPE_2__*,int) ;
 TYPE_2__* mpt2sas_base_get_reply_virt_addr (struct MPT2SAS_ADAPTER*,int ) ;

u8
mpt2sas_config_done(struct MPT2SAS_ADAPTER *ioc, u16 smid, u8 msix_index,
    u32 reply)
{
 MPI2DefaultReply_t *mpi_reply;

 if (ioc->config_cmds.status == MPT2_CMD_NOT_USED)
  return 1;
 if (ioc->config_cmds.smid != smid)
  return 1;
 ioc->config_cmds.status |= MPT2_CMD_COMPLETE;
 mpi_reply = mpt2sas_base_get_reply_virt_addr(ioc, reply);
 if (mpi_reply) {
  ioc->config_cmds.status |= MPT2_CMD_REPLY_VALID;
  memcpy(ioc->config_cmds.reply, mpi_reply,
      mpi_reply->MsgLength*4);
 }
 ioc->config_cmds.status &= ~MPT2_CMD_PENDING;



 ioc->config_cmds.smid = USHORT_MAX;
 complete(&ioc->config_cmds.done);
 return 1;
}
