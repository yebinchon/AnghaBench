
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int hdrlen; } ;
struct pppox_sock {TYPE_1__ chan; } ;
struct pppol2tp_session {int recv_seq; int debug; int send_seq; int lns_mode; int reorder_timeout; int name; struct sock* sock; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int KERN_INFO ;
 int PPPOL2TP_L2TP_HDR_SIZE_NOSEQ ;
 int PPPOL2TP_L2TP_HDR_SIZE_SEQ ;
 int PPPOL2TP_MSG_CONTROL ;





 int PRINTK (int,int ,int ,char*,int ,int) ;
 int msecs_to_jiffies (int) ;
 struct pppox_sock* pppox_sk (struct sock*) ;

__attribute__((used)) static int pppol2tp_session_setsockopt(struct sock *sk,
           struct pppol2tp_session *session,
           int optname, int val)
{
 int err = 0;

 switch (optname) {
 case 130:
  if ((val != 0) && (val != 1)) {
   err = -EINVAL;
   break;
  }
  session->recv_seq = val ? -1 : 0;
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: set recv_seq=%d\n", session->name,
         session->recv_seq);
  break;

 case 128:
  if ((val != 0) && (val != 1)) {
   err = -EINVAL;
   break;
  }
  session->send_seq = val ? -1 : 0;
  {
   struct sock *ssk = session->sock;
   struct pppox_sock *po = pppox_sk(ssk);
   po->chan.hdrlen = val ? PPPOL2TP_L2TP_HDR_SIZE_SEQ :
    PPPOL2TP_L2TP_HDR_SIZE_NOSEQ;
  }
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: set send_seq=%d\n", session->name, session->send_seq);
  break;

 case 131:
  if ((val != 0) && (val != 1)) {
   err = -EINVAL;
   break;
  }
  session->lns_mode = val ? -1 : 0;
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: set lns_mode=%d\n", session->name,
         session->lns_mode);
  break;

 case 132:
  session->debug = val;
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: set debug=%x\n", session->name, session->debug);
  break;

 case 129:
  session->reorder_timeout = msecs_to_jiffies(val);
  PRINTK(session->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
         "%s: set reorder_timeout=%d\n", session->name,
         session->reorder_timeout);
  break;

 default:
  err = -ENOPROTOOPT;
  break;
 }

 return err;
}
