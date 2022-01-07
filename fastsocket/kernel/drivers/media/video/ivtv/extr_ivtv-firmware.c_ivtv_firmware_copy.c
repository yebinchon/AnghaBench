
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dec_mem; int has_cx23415; int enc_mem; } ;


 int CX2341X_FIRM_DEC_FILENAME ;
 int CX2341X_FIRM_ENC_FILENAME ;
 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_DEBUG_WARN (char*) ;
 scalar_t__ IVTV_FW_DEC_SIZE ;
 scalar_t__ IVTV_FW_ENC_SIZE ;
 scalar_t__ load_fw_direct (int ,int ,struct ivtv*,scalar_t__) ;

__attribute__((used)) static int ivtv_firmware_copy(struct ivtv *itv)
{
 IVTV_DEBUG_INFO("Loading encoder image\n");
 if (load_fw_direct(CX2341X_FIRM_ENC_FILENAME,
     itv->enc_mem, itv, IVTV_FW_ENC_SIZE) != IVTV_FW_ENC_SIZE) {
  IVTV_DEBUG_WARN("failed loading encoder firmware\n");
  return -3;
 }
 if (!itv->has_cx23415)
  return 0;

 IVTV_DEBUG_INFO("Loading decoder image\n");
 if (load_fw_direct(CX2341X_FIRM_DEC_FILENAME,
     itv->dec_mem, itv, IVTV_FW_DEC_SIZE) != IVTV_FW_DEC_SIZE) {
  IVTV_DEBUG_WARN("failed loading decoder firmware\n");
  return -1;
 }
 return 0;
}
