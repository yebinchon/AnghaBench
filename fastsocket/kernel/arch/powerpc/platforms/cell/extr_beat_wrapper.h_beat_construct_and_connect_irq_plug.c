
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_construct_and_connect_irq_plug ;
 int beat_hcall_norets (int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_construct_and_connect_irq_plug(u64 plug_id,
 u64 outlet_id)
{
 return beat_hcall_norets(HV_construct_and_connect_irq_plug, plug_id,
        outlet_id);
}
