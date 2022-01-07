
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
struct bonding {int dummy; } ;


 int __tlb_clear_slave (struct bonding*,struct slave*,int) ;
 int _lock_tx_hashtbl_bh (struct bonding*) ;
 int _unlock_tx_hashtbl_bh (struct bonding*) ;

__attribute__((used)) static void tlb_clear_slave(struct bonding *bond, struct slave *slave,
    int save_load)
{
 _lock_tx_hashtbl_bh(bond);
 __tlb_clear_slave(bond, slave, save_load);
 _unlock_tx_hashtbl_bh(bond);
}
