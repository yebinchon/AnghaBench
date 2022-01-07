
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;
typedef int s32 ;
typedef int s16 ;


 int FREQ_BTSC_DUAL ;
 int FREQ_BTSC_DUAL_REF ;
 int FREQ_BTSC_SAP ;
 int FREQ_BTSC_SAP_REF ;
 int UNSET ;
 int dprintk (int,char*,int ,int ,int ,int ) ;
 int freq_magnitude (int *,int ,int ) ;

__attribute__((used)) static s32 detect_btsc(struct cx88_core *core, s16 x[], u32 N)
{
 s32 sap_ref = freq_magnitude(x, N, FREQ_BTSC_SAP_REF);
 s32 sap = freq_magnitude(x, N, FREQ_BTSC_SAP);
 s32 dual_ref = freq_magnitude(x, N, FREQ_BTSC_DUAL_REF);
 s32 dual = freq_magnitude(x, N, FREQ_BTSC_DUAL);
 dprintk(1, "detect btsc: dual_ref=%d, dual=%d, sap_ref=%d, sap=%d"
     "\n", dual_ref, dual, sap_ref, sap);

 return UNSET;
}
