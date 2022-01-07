
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int done; int reply; int status; } ;
struct MPT3SAS_ADAPTER {int port_enable_failed; int start_scan_failed; TYPE_1__ port_enable_cmds; scalar_t__ start_scan; scalar_t__ is_driver_loading; } ;
struct TYPE_6__ {scalar_t__ Function; int MsgLength; int IOCStatus; } ;
typedef TYPE_2__ MPI2DefaultReply_t ;


 scalar_t__ MPI2_FUNCTION_PORT_ENABLE ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int MPT3_CMD_COMPLETE ;
 int MPT3_CMD_NOT_USED ;
 int MPT3_CMD_PENDING ;
 int MPT3_CMD_REPLY_VALID ;
 int complete (int *) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,TYPE_2__*,int) ;
 TYPE_2__* mpt3sas_base_get_reply_virt_addr (struct MPT3SAS_ADAPTER*,int ) ;
 int mpt3sas_port_enable_complete (struct MPT3SAS_ADAPTER*) ;

u8
mpt3sas_port_enable_done(struct MPT3SAS_ADAPTER *ioc, u16 smid, u8 msix_index,
 u32 reply)
{
 MPI2DefaultReply_t *mpi_reply;
 u16 ioc_status;

 if (ioc->port_enable_cmds.status == MPT3_CMD_NOT_USED)
  return 1;

 mpi_reply = mpt3sas_base_get_reply_virt_addr(ioc, reply);
 if (!mpi_reply)
  return 1;

 if (mpi_reply->Function != MPI2_FUNCTION_PORT_ENABLE)
  return 1;

 ioc->port_enable_cmds.status &= ~MPT3_CMD_PENDING;
 ioc->port_enable_cmds.status |= MPT3_CMD_COMPLETE;
 ioc->port_enable_cmds.status |= MPT3_CMD_REPLY_VALID;
 memcpy(ioc->port_enable_cmds.reply, mpi_reply, mpi_reply->MsgLength*4);
 ioc_status = le16_to_cpu(mpi_reply->IOCStatus) & MPI2_IOCSTATUS_MASK;
 if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
  ioc->port_enable_failed = 1;

 if (ioc->is_driver_loading) {
  if (ioc_status == MPI2_IOCSTATUS_SUCCESS) {
   mpt3sas_port_enable_complete(ioc);
   return 1;
  } else {
   ioc->start_scan_failed = ioc_status;
   ioc->start_scan = 0;
   return 1;
  }
 }
 complete(&ioc->port_enable_cmds.done);
 return 1;
}
