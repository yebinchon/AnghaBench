
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct pppol2tp_session {int recv_seq; int debug; int send_seq; int lns_mode; int name; int reorder_timeout; } ;


 int ENOPROTOOPT ;
 int KERN_INFO ;
 int PPPOL2TP_MSG_CONTROL ;





 int PRINTK (int,int ,int ,char*,int ,int) ;
 scalar_t__ jiffies_to_msecs (int ) ;

__attribute__((used)) static int pppol2tp_session_getsockopt(struct sock *sk,
           struct pppol2tp_session *session,
           int optname, int *val)
{
 int err = 0;

 switch (optname) {
 case 130:
  *val = session->recv_seq;
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: get recv_seq=%d\n", session->name, *val);
  break;

 case 128:
  *val = session->send_seq;
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: get send_seq=%d\n", session->name, *val);
  break;

 case 131:
  *val = session->lns_mode;
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: get lns_mode=%d\n", session->name, *val);
  break;

 case 132:
  *val = session->debug;
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: get debug=%d\n", session->name, *val);
  break;

 case 129:
  *val = (int) jiffies_to_msecs(session->reorder_timeout);
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: get reorder_timeout=%d\n", session->name, *val);
  break;

 default:
  err = -ENOPROTOOPT;
 }

 return err;
}
