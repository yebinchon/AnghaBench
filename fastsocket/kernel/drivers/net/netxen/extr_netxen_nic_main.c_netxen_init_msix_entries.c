
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netxen_adapter {TYPE_1__* msix_entries; } ;
struct TYPE_2__ {int entry; } ;



__attribute__((used)) static void netxen_init_msix_entries(struct netxen_adapter *adapter, int count)
{
 int i;

 for (i = 0; i < count; i++)
  adapter->msix_entries[i].entry = i;
}
