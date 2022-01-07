
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_sp_obj {struct bnx2x_func_sp_drv_ops* drv; int wait_comp; int complete_cmd; int check_transition; int send_cmd; void* afex_rdata_mapping; void* afex_rdata; void* rdata_mapping; void* rdata; int one_pending_mutex; } ;
struct bnx2x_func_sp_drv_ops {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef void* dma_addr_t ;


 int bnx2x_func_chk_transition ;
 int bnx2x_func_comp_cmd ;
 int bnx2x_func_send_cmd ;
 int bnx2x_func_wait_comp ;
 int memset (struct bnx2x_func_sp_obj*,int ,int) ;
 int mutex_init (int *) ;

void bnx2x_init_func_obj(struct bnx2x *bp,
    struct bnx2x_func_sp_obj *obj,
    void *rdata, dma_addr_t rdata_mapping,
    void *afex_rdata, dma_addr_t afex_rdata_mapping,
    struct bnx2x_func_sp_drv_ops *drv_iface)
{
 memset(obj, 0, sizeof(*obj));

 mutex_init(&obj->one_pending_mutex);

 obj->rdata = rdata;
 obj->rdata_mapping = rdata_mapping;
 obj->afex_rdata = afex_rdata;
 obj->afex_rdata_mapping = afex_rdata_mapping;
 obj->send_cmd = bnx2x_func_send_cmd;
 obj->check_transition = bnx2x_func_chk_transition;
 obj->complete_cmd = bnx2x_func_comp_cmd;
 obj->wait_comp = bnx2x_func_wait_comp;

 obj->drv = drv_iface;
}
