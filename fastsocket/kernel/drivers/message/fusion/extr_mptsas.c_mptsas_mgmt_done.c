
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int status; int done; int reply; } ;
struct TYPE_14__ {TYPE_3__ sas_mgmt; int reply_sz; } ;
struct TYPE_10__ {int MsgLength; } ;
struct TYPE_11__ {TYPE_1__ reply; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
typedef TYPE_4__ MPT_FRAME_HDR ;
typedef TYPE_5__ MPT_ADAPTER ;


 int MPT_MGMT_STATUS_COMMAND_GOOD ;
 int MPT_MGMT_STATUS_PENDING ;
 int MPT_MGMT_STATUS_RF_VALID ;
 int complete (int *) ;
 int memcpy (int ,TYPE_4__*,int ) ;
 int min (int ,int) ;

__attribute__((used)) static int mptsas_mgmt_done(MPT_ADAPTER *ioc, MPT_FRAME_HDR *req,
  MPT_FRAME_HDR *reply)
{
 ioc->sas_mgmt.status |= MPT_MGMT_STATUS_COMMAND_GOOD;
 if (reply != ((void*)0)) {
  ioc->sas_mgmt.status |= MPT_MGMT_STATUS_RF_VALID;
  memcpy(ioc->sas_mgmt.reply, reply,
      min(ioc->reply_sz, 4 * reply->u.reply.MsgLength));
 }

 if (ioc->sas_mgmt.status & MPT_MGMT_STATUS_PENDING) {
  ioc->sas_mgmt.status &= ~MPT_MGMT_STATUS_PENDING;
  complete(&ioc->sas_mgmt.done);
  return 1;
 }
 return 0;
}
