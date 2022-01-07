
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct udphdr {int check; int len; } ;
struct sock {scalar_t__ sk_no_check; } ;
struct sk_buff {scalar_t__ ip_summed; int csum; } ;
struct inet_sock {int daddr; int saddr; } ;
typedef int __wsum ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int IPPROTO_UDP ;
 int __skb_checksum_complete (struct sk_buff*) ;
 int csum_add (int ,int ) ;
 int csum_fold (int ) ;
 int csum_tcpudp_nofold (int ,int ,int ,int ,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ntohs (int ) ;
 scalar_t__ skb_csum_unnecessary (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline int pppol2tp_verify_udp_checksum(struct sock *sk,
            struct sk_buff *skb)
{
 struct udphdr *uh = udp_hdr(skb);
 u16 ulen = ntohs(uh->len);
 struct inet_sock *inet;
 __wsum psum;

 if (sk->sk_no_check || skb_csum_unnecessary(skb) || !uh->check)
  return 0;

 inet = inet_sk(sk);
 psum = csum_tcpudp_nofold(inet->saddr, inet->daddr, ulen,
      IPPROTO_UDP, 0);

 if ((skb->ip_summed == CHECKSUM_COMPLETE) &&
     !csum_fold(csum_add(psum, skb->csum)))
  return 0;

 skb->csum = psum;

 return __skb_checksum_complete(skb);
}
