
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {unsigned int write_seq; unsigned int snd_nxt; unsigned int snd_una; int dst; } ;


 int CTP_ESTABLISHED ;
 int cxgbi_sock_set_state (struct cxgbi_sock*,int ) ;
 int dst_confirm (int ) ;
 int smp_mb () ;

void cxgbi_sock_established(struct cxgbi_sock *csk, unsigned int snd_isn,
   unsigned int opt)
{
 csk->write_seq = csk->snd_nxt = csk->snd_una = snd_isn;
 dst_confirm(csk->dst);
 smp_mb();
 cxgbi_sock_set_state(csk, CTP_ESTABLISHED);
}
