
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int hw; } ;


 int hw_dbg (int *,char*,int) ;
 int ixgbevf_request_msix_irqs (struct ixgbevf_adapter*) ;

__attribute__((used)) static int ixgbevf_request_irq(struct ixgbevf_adapter *adapter)
{
 int err = 0;

 err = ixgbevf_request_msix_irqs(adapter);

 if (err)
  hw_dbg(&adapter->hw,
         "request_irq failed, Error %d\n", err);

 return err;
}
