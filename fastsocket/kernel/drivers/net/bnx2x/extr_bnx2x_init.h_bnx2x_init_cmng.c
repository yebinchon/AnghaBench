
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmng_init_input {int port_rate; int flags; } ;
struct TYPE_2__ {int flags; } ;
struct cmng_init {TYPE_1__ port; } ;


 int BITS_TO_BYTES (int ) ;
 int bnx2x_init_fw_wrr (struct cmng_init_input const*,int ,struct cmng_init*) ;
 int bnx2x_init_max (struct cmng_init_input const*,int ,struct cmng_init*) ;
 int bnx2x_init_min (struct cmng_init_input const*,int ,struct cmng_init*) ;
 int bnx2x_init_safc (struct cmng_init_input const*,struct cmng_init*) ;
 int memset (struct cmng_init*,int ,int) ;

__attribute__((used)) static inline void bnx2x_init_cmng(const struct cmng_init_input *input_data,
       struct cmng_init *ram_data)
{
 u32 r_param;
 memset(ram_data, 0, sizeof(struct cmng_init));

 ram_data->port.flags = input_data->flags;




 r_param = BITS_TO_BYTES(input_data->port_rate);
 bnx2x_init_max(input_data, r_param, ram_data);
 bnx2x_init_min(input_data, r_param, ram_data);
 bnx2x_init_fw_wrr(input_data, r_param, ram_data);
 bnx2x_init_safc(input_data, ram_data);
}
