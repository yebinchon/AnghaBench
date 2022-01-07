
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pppol2tp_tunnel {struct hlist_head* session_hlist; } ;
struct hlist_head {int dummy; } ;


 int PPPOL2TP_HASH_BITS ;
 size_t hash_long (unsigned long,int ) ;

__attribute__((used)) static inline struct hlist_head *
pppol2tp_session_id_hash(struct pppol2tp_tunnel *tunnel, u16 session_id)
{
 unsigned long hash_val = (unsigned long) session_id;
 return &tunnel->session_hlist[hash_long(hash_val, PPPOL2TP_HASH_BITS)];
}
