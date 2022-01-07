
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksign_public_key {scalar_t__ expiredate; scalar_t__ timestamp; int link; int count; int * keyid; } ;


 int atomic_inc (int *) ;
 int down_write (int *) ;
 scalar_t__ get_seconds () ;
 int keyring ;
 int keyring_sem ;
 int list_add_tail (int *,int *) ;
 int printk (char*,...) ;
 int up_write (int *) ;

__attribute__((used)) static int add_keyblock_key(struct ksign_public_key *pk, void *data)
{
 printk("- Added public key %X%X\n", pk->keyid[0], pk->keyid[1]);

 if (pk->expiredate && pk->expiredate < get_seconds())
  printk("  - public key has expired\n");

 if (pk->timestamp > get_seconds())
  printk("  - key was been created %lu seconds in future\n",
         pk->timestamp - get_seconds());

 atomic_inc(&pk->count);

 down_write(&keyring_sem);
 list_add_tail(&pk->link, &keyring);
 up_write(&keyring_sem);

 return 0;
}
