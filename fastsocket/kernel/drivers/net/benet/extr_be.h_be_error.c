
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {scalar_t__ fw_timeout; scalar_t__ hw_error; scalar_t__ eeh_error; } ;



__attribute__((used)) static inline bool be_error(struct be_adapter *adapter)
{
 return adapter->eeh_error || adapter->hw_error || adapter->fw_timeout;
}
