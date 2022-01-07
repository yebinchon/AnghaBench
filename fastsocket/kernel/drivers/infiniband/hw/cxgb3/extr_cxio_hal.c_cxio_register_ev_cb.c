
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cxio_hal_ev_callback_func_t ;


 int cxio_ev_cb ;

void cxio_register_ev_cb(cxio_hal_ev_callback_func_t ev_cb)
{
 cxio_ev_cb = ev_cb;
}
