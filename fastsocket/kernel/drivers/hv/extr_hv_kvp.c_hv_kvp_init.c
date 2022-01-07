
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_util_service {int recv_buffer; } ;
struct TYPE_2__ {int active; } ;


 int cn_add_callback (int *,int ,int ) ;
 int kvp_cn_callback ;
 int kvp_id ;
 int kvp_name ;
 TYPE_1__ kvp_transaction ;
 int recv_buffer ;

int
hv_kvp_init(struct hv_util_service *srv)
{
 int err;

 err = cn_add_callback(&kvp_id, kvp_name, kvp_cn_callback);
 if (err)
  return err;
 recv_buffer = srv->recv_buffer;







 kvp_transaction.active = 1;

 return 0;
}
