
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_device {int max_speed; int node_id; int card; } ;


 int CSR_CONFIG_ROM ;
 int CSR_REGISTER_BASE ;
 int TCODE_READ_QUADLET_REQUEST ;
 int be32_to_cpus (int *) ;
 int fw_run_transaction (int ,int ,int ,int,int ,int,int *,int) ;
 int smp_rmb () ;

__attribute__((used)) static int read_rom(struct fw_device *device,
      int generation, int index, u32 *data)
{
 int rcode;


 smp_rmb();

 rcode = fw_run_transaction(device->card, TCODE_READ_QUADLET_REQUEST,
   device->node_id, generation, device->max_speed,
   (CSR_REGISTER_BASE | CSR_CONFIG_ROM) + index * 4,
   data, 4);
 be32_to_cpus(data);

 return rcode;
}
