
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;


 int INTR_EN ;
 int INTR_EN_EI ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static void ql_enable_interrupts(struct ql_adapter *qdev)
{
 ql_write32(qdev, INTR_EN, (INTR_EN_EI << 16) | INTR_EN_EI);
}
