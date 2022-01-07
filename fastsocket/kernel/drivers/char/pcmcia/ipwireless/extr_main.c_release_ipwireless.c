
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; int Base; } ;
struct TYPE_4__ {int Size; int Base; } ;
struct ipw_dev {int link; int handle_attr_memory; scalar_t__ attr_memory; int handle_common_memory; scalar_t__ common_memory; TYPE_1__ request_attr_memory; TYPE_2__ request_common_memory; } ;


 int iounmap (scalar_t__) ;
 int pcmcia_disable_device (int ) ;
 int pcmcia_release_window (int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void release_ipwireless(struct ipw_dev *ipw)
{
 pcmcia_disable_device(ipw->link);

 if (ipw->common_memory) {
  release_mem_region(ipw->request_common_memory.Base,
    ipw->request_common_memory.Size);
  iounmap(ipw->common_memory);
 }
 if (ipw->attr_memory) {
  release_mem_region(ipw->request_attr_memory.Base,
    ipw->request_attr_memory.Size);
  iounmap(ipw->attr_memory);
 }
 if (ipw->common_memory)
  pcmcia_release_window(ipw->handle_common_memory);
 if (ipw->attr_memory)
  pcmcia_release_window(ipw->handle_attr_memory);


 pcmcia_disable_device(ipw->link);
}
