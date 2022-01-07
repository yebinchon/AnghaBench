
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static char *intel_dsm_mux_type(u8 type)
{
 switch (type) {
 case 0:
  return "unknown";
 case 1:
  return "No MUX, iGPU only";
 case 2:
  return "No MUX, dGPU only";
 case 3:
  return "MUXed between iGPU and dGPU";
 default:
  return "bad type";
 }
}
