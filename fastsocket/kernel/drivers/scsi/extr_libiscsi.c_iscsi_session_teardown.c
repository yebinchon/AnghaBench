
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct iscsi_session {int discovery_parent_type; int portal_type; int ifacename; int boot_target; int boot_nic; int boot_root; int initiatorname; int targetalias; int targetname; int username_in; int username; int password_in; int password; int cmdpool; struct Scsi_Host* host; } ;
struct iscsi_cls_session {TYPE_1__* transport; struct iscsi_session* dd_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct module* owner; } ;


 int iscsi_destroy_session (struct iscsi_cls_session*) ;
 int iscsi_host_dec_session_cnt (struct Scsi_Host*) ;
 int iscsi_pool_free (int *) ;
 int kfree (int ) ;
 int module_put (struct module*) ;

void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
{
 struct iscsi_session *session = cls_session->dd_data;
 struct module *owner = cls_session->transport->owner;
 struct Scsi_Host *shost = session->host;

 iscsi_pool_free(&session->cmdpool);

 kfree(session->password);
 kfree(session->password_in);
 kfree(session->username);
 kfree(session->username_in);
 kfree(session->targetname);
 kfree(session->targetalias);
 kfree(session->initiatorname);
 kfree(session->boot_root);
 kfree(session->boot_nic);
 kfree(session->boot_target);
 kfree(session->ifacename);
 kfree(session->portal_type);
 kfree(session->discovery_parent_type);

 iscsi_destroy_session(cls_session);
 iscsi_host_dec_session_cnt(shost);
 module_put(owner);
}
