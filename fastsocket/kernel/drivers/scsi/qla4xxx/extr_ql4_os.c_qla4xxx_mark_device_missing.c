
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dummy; } ;


 int iscsi_block_session (struct iscsi_cls_session*) ;

void qla4xxx_mark_device_missing(struct iscsi_cls_session *cls_session)
{
 iscsi_block_session(cls_session);
}
