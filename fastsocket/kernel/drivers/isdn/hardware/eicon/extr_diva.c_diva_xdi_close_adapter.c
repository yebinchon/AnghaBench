
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; int status; } ;
struct TYPE_4__ {TYPE_1__ xdi_mbox; } ;
typedef TYPE_2__ diva_os_xdi_adapter_t ;


 int DIVA_XDI_MBOX_BUSY ;
 int diva_os_free (int ,int *) ;

void diva_xdi_close_adapter(void *adapter, void *os_handle)
{
 diva_os_xdi_adapter_t *a = (diva_os_xdi_adapter_t *) adapter;

 a->xdi_mbox.status &= ~DIVA_XDI_MBOX_BUSY;
 if (a->xdi_mbox.data) {
  diva_os_free(0, a->xdi_mbox.data);
  a->xdi_mbox.data = ((void*)0);
 }
}
