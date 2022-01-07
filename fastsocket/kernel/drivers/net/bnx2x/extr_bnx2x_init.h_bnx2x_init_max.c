
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct cmng_vnic {TYPE_3__* vnic_max_rate; } ;
struct TYPE_4__ {int rs_periodic_timeout; int rs_threshold; } ;
struct cmng_struct_per_port {TYPE_1__ rs_vars; } ;
struct cmng_init_input {scalar_t__* vnic_max_rate; } ;
struct cmng_init {struct cmng_struct_per_port port; struct cmng_vnic vnic; } ;
struct TYPE_5__ {int quota; scalar_t__ rate; } ;
struct TYPE_6__ {TYPE_2__ vn_counter; } ;


 int BNX2X_PORT2_MODE_NUM_VNICS ;
 int RS_PERIODIC_TIMEOUT_USEC ;
 int SDM_TICKS ;

__attribute__((used)) static inline void bnx2x_init_max(const struct cmng_init_input *input_data,
      u32 r_param, struct cmng_init *ram_data)
{
 u32 vnic;
 struct cmng_vnic *vdata = &ram_data->vnic;
 struct cmng_struct_per_port *pdata = &ram_data->port;





 pdata->rs_vars.rs_periodic_timeout =
 RS_PERIODIC_TIMEOUT_USEC / SDM_TICKS;





 pdata->rs_vars.rs_threshold =
 (5 * RS_PERIODIC_TIMEOUT_USEC * r_param)/4;


 for (vnic = 0; vnic < BNX2X_PORT2_MODE_NUM_VNICS; vnic++) {

  vdata->vnic_max_rate[vnic].vn_counter.rate =
  input_data->vnic_max_rate[vnic];




  vdata->vnic_max_rate[vnic].vn_counter.quota =
   RS_PERIODIC_TIMEOUT_USEC *
   (u32)vdata->vnic_max_rate[vnic].vn_counter.rate / 8;
 }

}
