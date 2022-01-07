
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int gru_intr (int ,int ) ;
 int uv_numa_blade_id () ;

irqreturn_t gru0_intr(int irq, void *dev_id)
{
 return gru_intr(0, uv_numa_blade_id());
}
