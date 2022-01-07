
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_firmware_pieces {int dummy; } ;
struct iwl_drv {int dummy; } ;
struct iwl_cfg {scalar_t__ max_inst_size; scalar_t__ max_data_size; } ;


 int IWL_DEBUG_INFO (struct iwl_drv*,char*,scalar_t__) ;
 int IWL_ERR (struct iwl_drv*,char*,scalar_t__) ;
 int IWL_UCODE_INIT ;
 int IWL_UCODE_REGULAR ;
 int IWL_UCODE_SECTION_DATA ;
 int IWL_UCODE_SECTION_INST ;
 scalar_t__ get_sec_size (struct iwl_firmware_pieces*,int ,int ) ;

__attribute__((used)) static int validate_sec_sizes(struct iwl_drv *drv,
         struct iwl_firmware_pieces *pieces,
         const struct iwl_cfg *cfg)
{
 IWL_DEBUG_INFO(drv, "f/w package hdr runtime inst size = %Zd\n",
  get_sec_size(pieces, IWL_UCODE_REGULAR,
        IWL_UCODE_SECTION_INST));
 IWL_DEBUG_INFO(drv, "f/w package hdr runtime data size = %Zd\n",
  get_sec_size(pieces, IWL_UCODE_REGULAR,
        IWL_UCODE_SECTION_DATA));
 IWL_DEBUG_INFO(drv, "f/w package hdr init inst size = %Zd\n",
  get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST));
 IWL_DEBUG_INFO(drv, "f/w package hdr init data size = %Zd\n",
  get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA));


 if (get_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST) >
       cfg->max_inst_size) {
  IWL_ERR(drv, "uCode instr len %Zd too large to fit in\n",
   get_sec_size(pieces, IWL_UCODE_REGULAR,
      IWL_UCODE_SECTION_INST));
  return -1;
 }

 if (get_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA) >
       cfg->max_data_size) {
  IWL_ERR(drv, "uCode data len %Zd too large to fit in\n",
   get_sec_size(pieces, IWL_UCODE_REGULAR,
      IWL_UCODE_SECTION_DATA));
  return -1;
 }

  if (get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST) >
       cfg->max_inst_size) {
  IWL_ERR(drv, "uCode init instr len %Zd too large to fit in\n",
   get_sec_size(pieces, IWL_UCODE_INIT,
      IWL_UCODE_SECTION_INST));
  return -1;
 }

 if (get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA) >
       cfg->max_data_size) {
  IWL_ERR(drv, "uCode init data len %Zd too large to fit in\n",
   get_sec_size(pieces, IWL_UCODE_REGULAR,
      IWL_UCODE_SECTION_DATA));
  return -1;
 }
 return 0;
}
