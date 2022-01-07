
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fw_device {int generation; int max_speed; int node_id; int card; } ;
struct firedtv {int dummy; } ;


 int EIO ;
 int RCODE_COMPLETE ;
 struct fw_device* device_of (struct firedtv*) ;
 int fw_run_transaction (int ,int,int ,int,int ,int ,void*,size_t) ;
 int smp_rmb () ;

__attribute__((used)) static int node_req(struct firedtv *fdtv, u64 addr, void *data, size_t len,
      int tcode)
{
 struct fw_device *device = device_of(fdtv);
 int rcode, generation = device->generation;

 smp_rmb();

 rcode = fw_run_transaction(device->card, tcode, device->node_id,
   generation, device->max_speed, addr, data, len);

 return rcode != RCODE_COMPLETE ? -EIO : 0;
}
