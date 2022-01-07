
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;


 long cede_processor () ;
 unsigned long get_cede_latency_hint () ;
 int set_cede_latency_hint (unsigned long) ;

__attribute__((used)) static inline long extended_cede_processor(unsigned long latency_hint)
{
 long rc;
 u8 old_latency_hint = get_cede_latency_hint();

 set_cede_latency_hint(latency_hint);
 rc = cede_processor();
 set_cede_latency_hint(old_latency_hint);

 return rc;
}
