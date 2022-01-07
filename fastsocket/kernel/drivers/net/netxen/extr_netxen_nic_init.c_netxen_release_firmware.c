
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int * fw; } ;


 int release_firmware (int *) ;

void
netxen_release_firmware(struct netxen_adapter *adapter)
{
 release_firmware(adapter->fw);
 adapter->fw = ((void*)0);
}
