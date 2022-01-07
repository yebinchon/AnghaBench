
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int d_session; int d_tunnel; } ;
struct pppol2tp_session {int ns; int name; int debug; scalar_t__ send_seq; TYPE_1__ tunnel_addr; } ;
typedef int __be16 ;


 int KERN_DEBUG ;
 int L2TP_HDRFLAG_S ;
 int L2TP_HDR_VER ;
 int PPPOL2TP_MSG_SEQ ;
 int PRINTK (int ,int ,int ,char*,int ,int ) ;
 void* htons (int ) ;

__attribute__((used)) static void pppol2tp_build_l2tp_header(struct pppol2tp_session *session,
           void *buf)
{
 __be16 *bufp = buf;
 u16 flags = L2TP_HDR_VER;

 if (session->send_seq)
  flags |= L2TP_HDRFLAG_S;





 *bufp++ = htons(flags);
 *bufp++ = htons(session->tunnel_addr.d_tunnel);
 *bufp++ = htons(session->tunnel_addr.d_session);
 if (session->send_seq) {
  *bufp++ = htons(session->ns);
  *bufp++ = 0;
  session->ns++;
  PRINTK(session->debug, PPPOL2TP_MSG_SEQ, KERN_DEBUG,
         "%s: updated ns to %hu\n", session->name, session->ns);
 }
}
