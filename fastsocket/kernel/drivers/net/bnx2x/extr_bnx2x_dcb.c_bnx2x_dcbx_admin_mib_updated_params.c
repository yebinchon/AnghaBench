
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef size_t u32 ;
struct TYPE_8__ {void* default_pri; TYPE_3__* app_pri_tbl; } ;
struct TYPE_6__ {void* pri_en_bitmap; void* enabled; } ;
struct TYPE_5__ {int pri_pg_tbl; int pg_bw_tbl; void* enabled; } ;
struct dcbx_features {TYPE_4__ app; TYPE_2__ pfc; TYPE_1__ ets; } ;
struct lldp_admin_mib {int ver_cfg_flags; struct dcbx_features features; } ;
struct bnx2x_config_dcbx_params {scalar_t__ overwrite_settings; int admin_dcbx_version; scalar_t__ admin_default_priority; struct bnx2x_admin_priority_app_table* admin_priority_app_table; scalar_t__ admin_pfc_bitmap; scalar_t__* admin_configuration_ets_pg; scalar_t__* admin_configuration_bw_precentage; scalar_t__ admin_app_priority_willing; scalar_t__ admin_pfc_willing; scalar_t__ admin_ets_willing; scalar_t__ admin_application_priority_tx_enable; scalar_t__ admin_pfc_tx_enable; scalar_t__ admin_ets_configuration_tx_enable; scalar_t__ admin_pfc_enable; scalar_t__ admin_ets_enable; } ;
struct bnx2x_admin_priority_app_table {scalar_t__ app_id; scalar_t__ traffic_type; int priority; scalar_t__ valid; } ;
struct bnx2x {scalar_t__ dcbx_enabled; struct bnx2x_config_dcbx_params dcbx_config_params; } ;
struct TYPE_7__ {scalar_t__ app_id; int appBitfield; void* pri_bitmap; } ;


 scalar_t__ BNX2X_DCBX_ENABLED_ON_NEG_ON ;
 scalar_t__ BNX2X_DCBX_OVERWRITE_SETTINGS_ENABLE ;
 int BNX2X_MSG_DCB ;
 int DCBX_APP_CONFIG_TX_ENABLED ;
 int DCBX_APP_ENTRY_VALID ;
 int DCBX_APP_SF_ETH_TYPE ;
 int DCBX_APP_SF_PORT ;
 int DCBX_APP_WILLING ;
 int DCBX_CEE_VERSION_MASK ;
 int DCBX_CEE_VERSION_SHIFT ;
 size_t DCBX_CONFIG_MAX_APP_PROTOCOL ;
 int DCBX_DCBX_ENABLED ;
 int DCBX_ETS_CONFIG_TX_ENABLED ;
 int DCBX_ETS_WILLING ;
 size_t DCBX_MAX_NUM_PG_BW_ENTRIES ;
 size_t DCBX_MAX_NUM_PRI_PG_ENTRIES ;
 int DCBX_PFC_CONFIG_TX_ENABLED ;
 int DCBX_PFC_WILLING ;
 int DCBX_PG_BW_GET (int ,size_t) ;
 int DCBX_PG_BW_SET (int ,size_t,void*) ;
 int DCBX_PRI_PG_GET (int ,size_t) ;
 int DCBX_PRI_PG_SET (int ,size_t,void*) ;
 int DP (int ,char*,size_t,int ) ;
 scalar_t__ ETH_TYPE_FCOE ;
 size_t FCOE_APP_IDX ;
 size_t ISCSI_APP_IDX ;
 size_t LLDP_ADMIN_MIB_OFFSET (struct bnx2x*) ;
 size_t PREDEFINED_APP_IDX_MAX ;
 int RESET_FLAGS (int,int) ;
 int SET_FLAGS (int,int) ;
 scalar_t__ TCP_PORT_ISCSI ;
 scalar_t__ TRAFFIC_TYPE_ETH ;
 scalar_t__ TRAFFIC_TYPE_PORT ;
 int bnx2x_read_data (struct bnx2x*,size_t*,size_t,int) ;
 int bnx2x_write_data (struct bnx2x*,size_t*,size_t,int) ;
 int memset (struct lldp_admin_mib*,int ,int) ;

__attribute__((used)) static void bnx2x_dcbx_admin_mib_updated_params(struct bnx2x *bp,
    u32 dcbx_lldp_params_offset)
{
 struct lldp_admin_mib admin_mib;
 u32 i, other_traf_type = PREDEFINED_APP_IDX_MAX, traf_type = 0;
 u32 offset = dcbx_lldp_params_offset + LLDP_ADMIN_MIB_OFFSET(bp);


 struct dcbx_features *af = &admin_mib.features;
 struct bnx2x_config_dcbx_params *dp = &bp->dcbx_config_params;

 memset(&admin_mib, 0, sizeof(struct lldp_admin_mib));


 bnx2x_read_data(bp, (u32 *)&admin_mib, offset,
   sizeof(struct lldp_admin_mib));

 if (bp->dcbx_enabled == BNX2X_DCBX_ENABLED_ON_NEG_ON)
  SET_FLAGS(admin_mib.ver_cfg_flags, DCBX_DCBX_ENABLED);
 else
  RESET_FLAGS(admin_mib.ver_cfg_flags, DCBX_DCBX_ENABLED);

 if (dp->overwrite_settings == BNX2X_DCBX_OVERWRITE_SETTINGS_ENABLE) {

  RESET_FLAGS(admin_mib.ver_cfg_flags, DCBX_CEE_VERSION_MASK);
  admin_mib.ver_cfg_flags |=
   (dp->admin_dcbx_version << DCBX_CEE_VERSION_SHIFT) &
    DCBX_CEE_VERSION_MASK;

  af->ets.enabled = (u8)dp->admin_ets_enable;

  af->pfc.enabled = (u8)dp->admin_pfc_enable;


  if (dp->admin_ets_configuration_tx_enable)
   SET_FLAGS(admin_mib.ver_cfg_flags,
      DCBX_ETS_CONFIG_TX_ENABLED);
  else
   RESET_FLAGS(admin_mib.ver_cfg_flags,
        DCBX_ETS_CONFIG_TX_ENABLED);

  if (dp->admin_pfc_tx_enable)
   SET_FLAGS(admin_mib.ver_cfg_flags,
      DCBX_PFC_CONFIG_TX_ENABLED);
  else
   RESET_FLAGS(admin_mib.ver_cfg_flags,
      DCBX_PFC_CONFIG_TX_ENABLED);

  if (dp->admin_application_priority_tx_enable)
   SET_FLAGS(admin_mib.ver_cfg_flags,
      DCBX_APP_CONFIG_TX_ENABLED);
  else
   RESET_FLAGS(admin_mib.ver_cfg_flags,
      DCBX_APP_CONFIG_TX_ENABLED);

  if (dp->admin_ets_willing)
   SET_FLAGS(admin_mib.ver_cfg_flags, DCBX_ETS_WILLING);
  else
   RESET_FLAGS(admin_mib.ver_cfg_flags, DCBX_ETS_WILLING);

  if (dp->admin_pfc_willing)
   SET_FLAGS(admin_mib.ver_cfg_flags, DCBX_PFC_WILLING);
  else
   RESET_FLAGS(admin_mib.ver_cfg_flags, DCBX_PFC_WILLING);

  if (dp->admin_app_priority_willing)
   SET_FLAGS(admin_mib.ver_cfg_flags, DCBX_APP_WILLING);
  else
   RESET_FLAGS(admin_mib.ver_cfg_flags, DCBX_APP_WILLING);

  for (i = 0 ; i < DCBX_MAX_NUM_PG_BW_ENTRIES; i++) {
   DCBX_PG_BW_SET(af->ets.pg_bw_tbl, i,
    (u8)dp->admin_configuration_bw_precentage[i]);

   DP(BNX2X_MSG_DCB, "pg_bw_tbl[%d] = %02x\n",
      i, DCBX_PG_BW_GET(af->ets.pg_bw_tbl, i));
  }

  for (i = 0; i < DCBX_MAX_NUM_PRI_PG_ENTRIES; i++) {
   DCBX_PRI_PG_SET(af->ets.pri_pg_tbl, i,
     (u8)dp->admin_configuration_ets_pg[i]);

   DP(BNX2X_MSG_DCB, "pri_pg_tbl[%d] = %02x\n",
      i, DCBX_PRI_PG_GET(af->ets.pri_pg_tbl, i));
  }



  af->pfc.pri_en_bitmap = (u8)dp->admin_pfc_bitmap;
  for (i = 0; i < DCBX_CONFIG_MAX_APP_PROTOCOL; i++) {
   if (dp->admin_priority_app_table[i].valid) {
    struct bnx2x_admin_priority_app_table *table =
     dp->admin_priority_app_table;
    if ((ETH_TYPE_FCOE == table[i].app_id) &&
       (TRAFFIC_TYPE_ETH == table[i].traffic_type))
     traf_type = FCOE_APP_IDX;
    else if ((TCP_PORT_ISCSI == table[i].app_id) &&
       (TRAFFIC_TYPE_PORT == table[i].traffic_type))
     traf_type = ISCSI_APP_IDX;
    else
     traf_type = other_traf_type++;

    af->app.app_pri_tbl[traf_type].app_id =
     table[i].app_id;

    af->app.app_pri_tbl[traf_type].pri_bitmap =
     (u8)(1 << table[i].priority);

    af->app.app_pri_tbl[traf_type].appBitfield =
        (DCBX_APP_ENTRY_VALID);

    af->app.app_pri_tbl[traf_type].appBitfield |=
       (TRAFFIC_TYPE_ETH == table[i].traffic_type) ?
     DCBX_APP_SF_ETH_TYPE : DCBX_APP_SF_PORT;
   }
  }

  af->app.default_pri = (u8)dp->admin_default_priority;
 }


 bnx2x_write_data(bp, (u32 *)&admin_mib, offset,
    sizeof(struct lldp_admin_mib));
}
