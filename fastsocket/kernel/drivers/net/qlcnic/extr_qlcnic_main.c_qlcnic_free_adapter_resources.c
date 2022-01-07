
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_3__* ahw; int * recv_ctx; } ;
struct TYPE_5__ {int * tmpl_hdr; } ;
struct TYPE_4__ {int * buff; } ;
struct TYPE_6__ {TYPE_2__ fw_dump; TYPE_1__ reset; } ;


 int kfree (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void qlcnic_free_adapter_resources(struct qlcnic_adapter *adapter)
{
 kfree(adapter->recv_ctx);
 adapter->recv_ctx = ((void*)0);

 if (adapter->ahw->fw_dump.tmpl_hdr) {
  vfree(adapter->ahw->fw_dump.tmpl_hdr);
  adapter->ahw->fw_dump.tmpl_hdr = ((void*)0);
 }

 kfree(adapter->ahw->reset.buff);
 adapter->ahw->fw_dump.tmpl_hdr = ((void*)0);
}
