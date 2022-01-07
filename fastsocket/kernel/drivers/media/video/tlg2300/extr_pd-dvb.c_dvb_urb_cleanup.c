
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_dvb_adapter {int urb_array; } ;


 int DVB_SBUF_NUM ;
 int free_all_urb_generic (int ,int ) ;

__attribute__((used)) static void dvb_urb_cleanup(struct pd_dvb_adapter *pd_dvb)
{
 free_all_urb_generic(pd_dvb->urb_array, DVB_SBUF_NUM);
}
