
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ G_HASHTYPE (int ) ;
 scalar_t__ RSS_HASH_4_TUPLE ;
 int ntohl (int ) ;

__attribute__((used)) static inline int is_eth_tcp(u32 rss)
{
 return G_HASHTYPE(ntohl(rss)) == RSS_HASH_4_TUPLE;
}
