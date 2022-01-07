
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int eeh_error; int hw_error; int fw_timeout; } ;



__attribute__((used)) static inline void be_clear_all_error(struct be_adapter *adapter)
{
 adapter->eeh_error = 0;
 adapter->hw_error = 0;
 adapter->fw_timeout = 0;
}
