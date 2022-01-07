
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slave {int dummy; } ;
struct bonding {int dummy; } ;


 struct slave* __tlb_choose_channel (struct bonding*,int ,int ) ;
 int _lock_tx_hashtbl (struct bonding*) ;
 int _unlock_tx_hashtbl (struct bonding*) ;

__attribute__((used)) static struct slave *tlb_choose_channel(struct bonding *bond, u32 hash_index,
     u32 skb_len)
{
 struct slave *tx_slave;





 _lock_tx_hashtbl(bond);
 tx_slave = __tlb_choose_channel(bond, hash_index, skb_len);
 _unlock_tx_hashtbl(bond);
 return tx_slave;
}
