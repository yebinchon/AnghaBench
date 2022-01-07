
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct iphdr {int ihl; int tot_len; } ;


 int ntohs (int ) ;

__attribute__((used)) static inline int get_l4_pyld_length(struct iphdr *ip, struct tcphdr *tcp)
{
 return ntohs(ip->tot_len) - (ip->ihl << 2) - (tcp->doff << 2);
}
