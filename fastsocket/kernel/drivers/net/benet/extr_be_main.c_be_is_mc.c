
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int function_mode; } ;


 int FLEX10_MODE ;
 int UMC_ENABLED ;
 int VNIC_MODE ;

__attribute__((used)) static inline bool be_is_mc(struct be_adapter *adapter) {
 return (adapter->function_mode & FLEX10_MODE ||
  adapter->function_mode & VNIC_MODE ||
  adapter->function_mode & UMC_ENABLED);
}
