
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int iscsi_host_free (struct Scsi_Host*) ;
 int iscsi_host_remove (struct Scsi_Host*) ;
 int iscsi_session_teardown (struct iscsi_cls_session*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;

__attribute__((used)) static void iscsi_iser_session_destroy(struct iscsi_cls_session *cls_session)
{
 struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);

 iscsi_session_teardown(cls_session);
 iscsi_host_remove(shost);
 iscsi_host_free(shost);
}
