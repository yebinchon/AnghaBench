
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int drain_mcelog_buffer () ;
 int x86_mce_decoder_chain ;

void mce_register_decode_chain(struct notifier_block *nb)
{
 atomic_notifier_chain_register(&x86_mce_decoder_chain, nb);
 drain_mcelog_buffer();
}
