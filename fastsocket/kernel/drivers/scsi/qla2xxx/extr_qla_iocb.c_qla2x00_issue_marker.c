
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ marker_needed; TYPE_3__* req; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_8__ {int rsp; } ;


 int MK_SYNC_ALL ;
 int QLA_FUNCTION_FAILED ;
 scalar_t__ QLA_SUCCESS ;
 scalar_t__ __qla2x00_marker (TYPE_1__*,TYPE_3__*,int ,int ,int ,int ) ;
 scalar_t__ qla2x00_marker (TYPE_1__*,TYPE_3__*,int ,int ,int ,int ) ;

int qla2x00_issue_marker(scsi_qla_host_t *vha, int ha_locked)
{
 if (ha_locked) {
  if (__qla2x00_marker(vha, vha->req, vha->req->rsp, 0, 0,
     MK_SYNC_ALL) != QLA_SUCCESS)
   return QLA_FUNCTION_FAILED;
 } else {
  if (qla2x00_marker(vha, vha->req, vha->req->rsp, 0, 0,
     MK_SYNC_ALL) != QLA_SUCCESS)
   return QLA_FUNCTION_FAILED;
 }
 vha->marker_needed = 0;

 return QLA_SUCCESS;
}
