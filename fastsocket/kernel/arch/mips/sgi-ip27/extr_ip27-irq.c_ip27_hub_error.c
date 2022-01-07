
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void ip27_hub_error(void)
{
 panic("CPU %d got a hub error interrupt", smp_processor_id());
}
