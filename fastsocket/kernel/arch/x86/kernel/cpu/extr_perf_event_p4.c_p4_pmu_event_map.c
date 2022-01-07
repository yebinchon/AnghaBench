
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct p4_event_bind {int opcode; } ;


 int P4_CCCR_ESEL (unsigned int) ;
 unsigned int P4_OPCODE_ESEL (int ) ;
 struct p4_event_bind* p4_config_get_bind (int ) ;
 int p4_config_pack_cccr (int ) ;
 int * p4_general_events ;

__attribute__((used)) static u64 p4_pmu_event_map(int hw_event)
{
 struct p4_event_bind *bind;
 unsigned int esel;
 u64 config;

 config = p4_general_events[hw_event];
 bind = p4_config_get_bind(config);
 esel = P4_OPCODE_ESEL(bind->opcode);
 config |= p4_config_pack_cccr(P4_CCCR_ESEL(esel));

 return config;
}
