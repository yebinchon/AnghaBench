
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union partition_info_u {int hub_version; long partition_id; long coherence_id; long region_size; void* val; } ;
typedef void* u64 ;
typedef scalar_t__ s64 ;


 scalar_t__ BIOS_STATUS_SUCCESS ;
 int UV_BIOS_GET_SN_INFO ;
 scalar_t__ uv_bios_call_irqsave (int ,int,void*,void*,int ,int ) ;

s64 uv_bios_get_sn_info(int fc, int *uvtype, long *partid, long *coher,
  long *region, long *ssn)
{
 s64 ret;
 u64 v0, v1;
 union partition_info_u part;

 ret = uv_bios_call_irqsave(UV_BIOS_GET_SN_INFO, fc,
    (u64)(&v0), (u64)(&v1), 0, 0);
 if (ret != BIOS_STATUS_SUCCESS)
  return ret;

 part.val = v0;
 if (uvtype)
  *uvtype = part.hub_version;
 if (partid)
  *partid = part.partition_id;
 if (coher)
  *coher = part.coherence_id;
 if (region)
  *region = part.region_size;
 if (ssn)
  *ssn = v1;
 return ret;
}
