
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {unsigned short max_r2t; } ;
struct iscsi_conn {struct iscsi_session* session; } ;


 int EINVAL ;
 int is_power_of_2 (unsigned short) ;
 int iscsi_tcp_r2tpool_alloc (struct iscsi_session*) ;
 int iscsi_tcp_r2tpool_free (struct iscsi_session*) ;
 int sscanf (char*,char*,unsigned short*) ;

int iscsi_tcp_set_max_r2t(struct iscsi_conn *conn, char*buf)
{
 struct iscsi_session *session = conn->session;
 unsigned short r2ts = 0;

 sscanf(buf, "%hu", &r2ts);
 if (session->max_r2t == r2ts)
  return 0;

 if (!r2ts || !is_power_of_2(r2ts))
  return -EINVAL;

 session->max_r2t = r2ts;
 iscsi_tcp_r2tpool_free(session);
 return iscsi_tcp_r2tpool_alloc(session);
}
