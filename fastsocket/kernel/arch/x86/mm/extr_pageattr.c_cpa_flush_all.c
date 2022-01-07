
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int __cpa_flush_all ;
 int irqs_disabled () ;
 int on_each_cpu (int ,void*,int) ;

__attribute__((used)) static void cpa_flush_all(unsigned long cache)
{
 BUG_ON(irqs_disabled());

 on_each_cpu(__cpa_flush_all, (void *) cache, 1);
}
