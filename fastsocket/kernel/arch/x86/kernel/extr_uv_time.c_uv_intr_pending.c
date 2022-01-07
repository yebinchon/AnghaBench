
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV1H_EVENT_OCCURRED0_RTC1_MASK ;
 int UVH_EVENT_OCCURRED0 ;
 int UVXH_EVENT_OCCURRED2 ;
 int UVXH_EVENT_OCCURRED2_RTC_1_MASK ;
 scalar_t__ is_uv1_hub () ;
 scalar_t__ is_uvx_hub () ;
 int uv_read_global_mmr64 (int,int ) ;

__attribute__((used)) static int uv_intr_pending(int pnode)
{
 if (is_uv1_hub())
  return uv_read_global_mmr64(pnode, UVH_EVENT_OCCURRED0) &
   UV1H_EVENT_OCCURRED0_RTC1_MASK;
 else if (is_uvx_hub())
  return uv_read_global_mmr64(pnode, UVXH_EVENT_OCCURRED2) &
   UVXH_EVENT_OCCURRED2_RTC_1_MASK;
 return 0;
}
