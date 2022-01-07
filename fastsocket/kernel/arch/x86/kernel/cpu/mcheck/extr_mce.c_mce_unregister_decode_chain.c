
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int x86_mce_decoder_chain ;

void mce_unregister_decode_chain(struct notifier_block *nb)
{
 atomic_notifier_chain_unregister(&x86_mce_decoder_chain, nb);
}
