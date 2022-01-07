
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {scalar_t__ eeh_error; } ;


 int be_cmd_intr_set (struct be_adapter*,int) ;
 int be_reg_intr_set (struct be_adapter*,int) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;

__attribute__((used)) static void be_intr_set(struct be_adapter *adapter, bool enable)
{
 int status = 0;


 if (lancer_chip(adapter))
  return;

 if (adapter->eeh_error)
  return;

 status = be_cmd_intr_set(adapter, enable);
 if (status)
  be_reg_intr_set(adapter, enable);
}
