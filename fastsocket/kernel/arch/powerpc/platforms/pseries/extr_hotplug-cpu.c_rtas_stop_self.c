
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_args {scalar_t__ token; } ;


 int BUG_ON (int) ;
 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 int __pa (struct rtas_args*) ;
 int enter_rtas (int ) ;
 int hard_smp_processor_id () ;
 int local_irq_disable () ;
 int panic (char*) ;
 int printk (char*,int ,int ) ;
 struct rtas_args rtas_stop_self_args ;
 int smp_processor_id () ;

__attribute__((used)) static void rtas_stop_self(void)
{
 struct rtas_args *args = &rtas_stop_self_args;

 local_irq_disable();

 BUG_ON(args->token == RTAS_UNKNOWN_SERVICE);

 printk("cpu %u (hwid %u) Ready to die...\n",
        smp_processor_id(), hard_smp_processor_id());
 enter_rtas(__pa(args));

 panic("Alas, I survived.\n");
}
