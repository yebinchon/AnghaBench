
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int type_flags; int dst_mutex; } ;


 int DST_ERROR ;
 int DST_INFO ;
 int DST_TYPE_HAS_CA ;
 int DST_TYPE_HAS_FW_BUILD ;
 int DST_TYPE_HAS_MULTI_FE ;
 int DST_TYPE_HAS_TS204 ;
 int dprintk (int ,int ,int,char*) ;
 int dst_addons ;
 scalar_t__ dst_card_type (struct dst_state*) ;
 scalar_t__ dst_comm_init (struct dst_state*) ;
 scalar_t__ dst_fw_ver (struct dst_state*) ;
 scalar_t__ dst_get_device_id (struct dst_state*) ;
 scalar_t__ dst_get_mac (struct dst_state*) ;
 scalar_t__ dst_get_tuner_info (struct dst_state*) ;
 scalar_t__ dst_get_vendor (struct dst_state*) ;
 int dst_packsize (struct dst_state*,int) ;
 int msleep (int) ;
 int mutex_init (int *) ;
 scalar_t__ rdc_8820_reset (struct dst_state*) ;
 int verbose ;

__attribute__((used)) static int dst_probe(struct dst_state *state)
{
 mutex_init(&state->dst_mutex);
 if (dst_addons & DST_TYPE_HAS_CA) {
  if ((rdc_8820_reset(state)) < 0) {
   dprintk(verbose, DST_ERROR, 1, "RDC 8820 RESET Failed.");
   return -1;
  }
  msleep(4000);
 } else {
  msleep(100);
 }
 if ((dst_comm_init(state)) < 0) {
  dprintk(verbose, DST_ERROR, 1, "DST Initialization Failed.");
  return -1;
 }
 msleep(100);
 if (dst_get_device_id(state) < 0) {
  dprintk(verbose, DST_ERROR, 1, "unknown device.");
  return -1;
 }
 if (dst_get_mac(state) < 0) {
  dprintk(verbose, DST_INFO, 1, "MAC: Unsupported command");
 }
 if ((state->type_flags & DST_TYPE_HAS_MULTI_FE) || (state->type_flags & DST_TYPE_HAS_FW_BUILD)) {
  if (dst_get_tuner_info(state) < 0)
   dprintk(verbose, DST_INFO, 1, "Tuner: Unsupported command");
 }
 if (state->type_flags & DST_TYPE_HAS_TS204) {
  dst_packsize(state, 204);
 }
 if (state->type_flags & DST_TYPE_HAS_FW_BUILD) {
  if (dst_fw_ver(state) < 0) {
   dprintk(verbose, DST_INFO, 1, "FW: Unsupported command");
   return 0;
  }
  if (dst_card_type(state) < 0) {
   dprintk(verbose, DST_INFO, 1, "Card: Unsupported command");
   return 0;
  }
  if (dst_get_vendor(state) < 0) {
   dprintk(verbose, DST_INFO, 1, "Vendor: Unsupported command");
   return 0;
  }
 }

 return 0;
}
