
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_task {int dummy; } ;
struct iscsi_session {int cmds_max; struct iscsi_task** cmds; TYPE_1__* tt; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
typedef int itt_t ;
struct TYPE_2__ {int (* parse_pdu_itt ) (struct iscsi_conn*,int ,int*,int *) ;} ;


 int RESERVED_ITT ;
 int get_itt (int ) ;
 int stub1 (struct iscsi_conn*,int ,int*,int *) ;

struct iscsi_task *iscsi_itt_to_task(struct iscsi_conn *conn, itt_t itt)
{
 struct iscsi_session *session = conn->session;
 int i;

 if (itt == RESERVED_ITT)
  return ((void*)0);

 if (session->tt->parse_pdu_itt)
  session->tt->parse_pdu_itt(conn, itt, &i, ((void*)0));
 else
  i = get_itt(itt);
 if (i >= session->cmds_max)
  return ((void*)0);

 return session->cmds[i];
}
