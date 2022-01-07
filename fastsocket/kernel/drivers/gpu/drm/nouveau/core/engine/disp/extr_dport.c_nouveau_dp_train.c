
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nouveau_i2c {int (* find ) (struct nouveau_i2c*,int ) ;int (* find_type ) (struct nouveau_i2c*,int ) ;} ;
struct nouveau_dp_func {int dummy; } ;
struct nouveau_disp {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct dp_state {int head; int* dpcd; int link_nr; int link_bw; int stat; int aux; int info; int version; struct dcb_output* outp; struct nouveau_dp_func const* func; struct nouveau_disp* disp; } ;
struct dcb_output {int i2c_index; int extdev; scalar_t__ location; int hashm; int hasht; } ;


 int DPCD_RC02_MAX_LANE_COUNT ;
 int EINVAL ;
 int ENODEV ;
 int ERR (char*) ;
 int NV_I2C_TYPE_DCBI2C (int ) ;
 int NV_I2C_TYPE_EXTAUX (int ) ;
 int dp_link_train_cr (struct dp_state*) ;
 int dp_link_train_eq (struct dp_state*) ;
 int dp_link_train_fini (struct dp_state*) ;
 int dp_link_train_init (struct dp_state*,int) ;
 int dp_set_link_config (struct dp_state*) ;
 int dp_set_training_pattern (struct dp_state*,int ) ;
 int memset (int ,int,int) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_disp*) ;
 struct nouveau_i2c* nouveau_i2c (struct nouveau_disp*) ;
 int nv_rdaux (int ,int,int*,int) ;
 int nvbios_dpout_match (struct nouveau_bios*,int ,int ,int *,int *,int *,int *,int *) ;
 int stub1 (struct nouveau_i2c*,int ) ;
 int stub2 (struct nouveau_i2c*,int ) ;

int
nouveau_dp_train(struct nouveau_disp *disp, const struct nouveau_dp_func *func,
   struct dcb_output *outp, int head, u32 datarate)
{
 struct nouveau_bios *bios = nouveau_bios(disp);
 struct nouveau_i2c *i2c = nouveau_i2c(disp);
 struct dp_state _dp = {
  .disp = disp,
  .func = func,
  .outp = outp,
  .head = head,
 }, *dp = &_dp;
 const u32 bw_list[] = { 270000, 162000, 0 };
 const u32 *link_bw = bw_list;
 u8 hdr, cnt, len;
 u32 data;
 int ret;


 data = nvbios_dpout_match(bios, outp->hasht, outp->hashm, &dp->version,
     &hdr, &cnt, &len, &dp->info);
 if (!data) {
  ERR("bios data not found\n");
  return -EINVAL;
 }


 if (outp->location)
  dp->aux = i2c->find_type(i2c, NV_I2C_TYPE_EXTAUX(outp->extdev));
 else
  dp->aux = i2c->find(i2c, NV_I2C_TYPE_DCBI2C(outp->i2c_index));
 if (!dp->aux) {
  ERR("no aux channel?!\n");
  return -ENODEV;
 }

 ret = nv_rdaux(dp->aux, 0x00000, dp->dpcd, sizeof(dp->dpcd));
 if (ret) {
  ERR("failed to read DPCD\n");
  return ret;
 }


 datarate = (datarate / 8) * 10;


 dp_link_train_init(dp, dp->dpcd[3] & 0x01);


 while (*link_bw > (dp->dpcd[1] * 27000))
  link_bw++;

 while (link_bw[0]) {

  dp->link_nr = dp->dpcd[2] & DPCD_RC02_MAX_LANE_COUNT;
  while ((dp->link_nr >> 1) * link_bw[0] > datarate)
   dp->link_nr >>= 1;


  while ((link_bw[1] * dp->link_nr) > datarate)
   link_bw++;
  dp->link_bw = link_bw[0];


  ret = dp_set_link_config(dp);
  if (ret == 0) {

   memset(dp->stat, 0x00, sizeof(dp->stat));
   if (!dp_link_train_cr(dp) &&
       !dp_link_train_eq(dp))
    break;
  } else
  if (ret >= 1) {

   break;
  }


  link_bw++;
 }


 dp_set_training_pattern(dp, 0);


 dp_link_train_fini(dp);
 return 1;
}
