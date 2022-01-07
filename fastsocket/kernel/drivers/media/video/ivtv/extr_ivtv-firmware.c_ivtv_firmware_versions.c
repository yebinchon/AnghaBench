
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv {scalar_t__ has_cx23415; } ;


 int CX2341X_DEC_GET_VERSION ;
 int CX2341X_ENC_GET_VERSION ;
 int CX2341X_MBOX_MAX_DATA ;
 int IVTV_INFO (char*,int) ;
 int IVTV_WARN (char*) ;
 int ivtv_vapi_result (struct ivtv*,int*,int ,int ) ;

void ivtv_firmware_versions(struct ivtv *itv)
{
 u32 data[CX2341X_MBOX_MAX_DATA];


 ivtv_vapi_result(itv, data, CX2341X_ENC_GET_VERSION, 0);
 IVTV_INFO("Encoder revision: 0x%08x\n", data[0]);

 if (data[0] != 0x02060039)
  IVTV_WARN("Recommended firmware version is 0x02060039.\n");

 if (itv->has_cx23415) {

  ivtv_vapi_result(itv, data, CX2341X_DEC_GET_VERSION, 0);
  IVTV_INFO("Decoder revision: 0x%08x\n", data[0]);
 }
}
