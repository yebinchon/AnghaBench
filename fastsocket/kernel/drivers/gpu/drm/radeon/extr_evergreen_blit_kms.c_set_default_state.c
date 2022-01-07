
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct TYPE_2__ {int shader_gpu_addr; int state_offset; int state_len; } ;
struct radeon_device {int family; TYPE_1__ r600_blit; struct radeon_ring* ring; } ;


 int ALIGN (int ,int) ;


 int CHIP_CAYMAN ;
 int CS_PRIO (int ) ;
 int ES_PRIO (int) ;
 int EXPORT_SRC_C ;
 int GS_PRIO (int) ;
 int HS_PRIO (int ) ;
 int LS_PRIO (int ) ;
 int NUM_CLAUSE_TEMP_GPRS (int) ;
 int NUM_ES_GPRS (int) ;
 int NUM_ES_STACK_ENTRIES (int) ;
 int NUM_ES_THREADS (int) ;
 int NUM_GS_GPRS (int) ;
 int NUM_GS_STACK_ENTRIES (int) ;
 int NUM_GS_THREADS (int) ;
 int NUM_HS_GPRS (int) ;
 int NUM_HS_STACK_ENTRIES (int) ;
 int NUM_HS_THREADS (int) ;
 int NUM_LS_GPRS (int) ;
 int NUM_LS_STACK_ENTRIES (int) ;
 int NUM_LS_THREADS (int) ;
 int NUM_PS_GPRS (int) ;
 int NUM_PS_STACK_ENTRIES (int) ;
 int NUM_PS_THREADS (int) ;
 int NUM_VS_GPRS (int) ;
 int NUM_VS_STACK_ENTRIES (int) ;
 int NUM_VS_THREADS (int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_CLEAR_STATE ;
 int PACKET3_INDIRECT_BUFFER ;
 int PACKET3_MODE_CONTROL ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_START ;
 int PS_PRIO (int ) ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int SQ_CONFIG ;
 int SQ_DYN_GPR_CNTL_PS_FLUSH_REQ ;
 int SQ_LDS_RESOURCE_MGMT ;
 int VC_ENABLE ;
 int VS_PRIO (int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void
set_default_state(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 u32 sq_config, sq_gpr_resource_mgmt_1, sq_gpr_resource_mgmt_2, sq_gpr_resource_mgmt_3;
 u32 sq_thread_resource_mgmt, sq_thread_resource_mgmt_2;
 u32 sq_stack_resource_mgmt_1, sq_stack_resource_mgmt_2, sq_stack_resource_mgmt_3;
 int num_ps_gprs, num_vs_gprs, num_temp_gprs;
 int num_gs_gprs, num_es_gprs, num_hs_gprs, num_ls_gprs;
 int num_ps_threads, num_vs_threads, num_gs_threads, num_es_threads;
 int num_hs_threads, num_ls_threads;
 int num_ps_stack_entries, num_vs_stack_entries, num_gs_stack_entries, num_es_stack_entries;
 int num_hs_stack_entries, num_ls_stack_entries;
 u64 gpu_addr;
 int dwords;


 radeon_ring_write(ring, PACKET3(PACKET3_CLEAR_STATE, 0));
 radeon_ring_write(ring, 0);

 if (rdev->family < CHIP_CAYMAN) {
  switch (rdev->family) {
  case 136:
  default:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 96;
   num_vs_threads = 16;
   num_gs_threads = 16;
   num_es_threads = 16;
   num_hs_threads = 16;
   num_ls_threads = 16;
   num_ps_stack_entries = 42;
   num_vs_stack_entries = 42;
   num_gs_stack_entries = 42;
   num_es_stack_entries = 42;
   num_hs_stack_entries = 42;
   num_ls_stack_entries = 42;
   break;
  case 131:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 128;
   num_vs_threads = 20;
   num_gs_threads = 20;
   num_es_threads = 20;
   num_hs_threads = 20;
   num_ls_threads = 20;
   num_ps_stack_entries = 42;
   num_vs_stack_entries = 42;
   num_gs_stack_entries = 42;
   num_es_stack_entries = 42;
   num_hs_stack_entries = 42;
   num_ls_stack_entries = 42;
   break;
  case 133:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 128;
   num_vs_threads = 20;
   num_gs_threads = 20;
   num_es_threads = 20;
   num_hs_threads = 20;
   num_ls_threads = 20;
   num_ps_stack_entries = 85;
   num_vs_stack_entries = 85;
   num_gs_stack_entries = 85;
   num_es_stack_entries = 85;
   num_hs_stack_entries = 85;
   num_ls_stack_entries = 85;
   break;
  case 135:
  case 134:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 128;
   num_vs_threads = 20;
   num_gs_threads = 20;
   num_es_threads = 20;
   num_hs_threads = 20;
   num_ls_threads = 20;
   num_ps_stack_entries = 85;
   num_vs_stack_entries = 85;
   num_gs_stack_entries = 85;
   num_es_stack_entries = 85;
   num_hs_stack_entries = 85;
   num_ls_stack_entries = 85;
   break;
  case 132:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 96;
   num_vs_threads = 16;
   num_gs_threads = 16;
   num_es_threads = 16;
   num_hs_threads = 16;
   num_ls_threads = 16;
   num_ps_stack_entries = 42;
   num_vs_stack_entries = 42;
   num_gs_stack_entries = 42;
   num_es_stack_entries = 42;
   num_hs_stack_entries = 42;
   num_ls_stack_entries = 42;
   break;
  case 130:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 96;
   num_vs_threads = 25;
   num_gs_threads = 25;
   num_es_threads = 25;
   num_hs_threads = 25;
   num_ls_threads = 25;
   num_ps_stack_entries = 42;
   num_vs_stack_entries = 42;
   num_gs_stack_entries = 42;
   num_es_stack_entries = 42;
   num_hs_stack_entries = 42;
   num_ls_stack_entries = 42;
   break;
  case 129:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 96;
   num_vs_threads = 25;
   num_gs_threads = 25;
   num_es_threads = 25;
   num_hs_threads = 25;
   num_ls_threads = 25;
   num_ps_stack_entries = 85;
   num_vs_stack_entries = 85;
   num_gs_stack_entries = 85;
   num_es_stack_entries = 85;
   num_hs_stack_entries = 85;
   num_ls_stack_entries = 85;
   break;
  case 138:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 128;
   num_vs_threads = 20;
   num_gs_threads = 20;
   num_es_threads = 20;
   num_hs_threads = 20;
   num_ls_threads = 20;
   num_ps_stack_entries = 85;
   num_vs_stack_entries = 85;
   num_gs_stack_entries = 85;
   num_es_stack_entries = 85;
   num_hs_stack_entries = 85;
   num_ls_stack_entries = 85;
   break;
  case 128:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 128;
   num_vs_threads = 20;
   num_gs_threads = 20;
   num_es_threads = 20;
   num_hs_threads = 20;
   num_ls_threads = 20;
   num_ps_stack_entries = 42;
   num_vs_stack_entries = 42;
   num_gs_stack_entries = 42;
   num_es_stack_entries = 42;
   num_hs_stack_entries = 42;
   num_ls_stack_entries = 42;
   break;
  case 137:
   num_ps_gprs = 93;
   num_vs_gprs = 46;
   num_temp_gprs = 4;
   num_gs_gprs = 31;
   num_es_gprs = 31;
   num_hs_gprs = 23;
   num_ls_gprs = 23;
   num_ps_threads = 128;
   num_vs_threads = 10;
   num_gs_threads = 10;
   num_es_threads = 10;
   num_hs_threads = 10;
   num_ls_threads = 10;
   num_ps_stack_entries = 42;
   num_vs_stack_entries = 42;
   num_gs_stack_entries = 42;
   num_es_stack_entries = 42;
   num_hs_stack_entries = 42;
   num_ls_stack_entries = 42;
   break;
  }

  if ((rdev->family == 136) ||
      (rdev->family == 132) ||
      (rdev->family == 130) ||
      (rdev->family == 129) ||
      (rdev->family == 137))
   sq_config = 0;
  else
   sq_config = VC_ENABLE;

  sq_config |= (EXPORT_SRC_C |
         CS_PRIO(0) |
         LS_PRIO(0) |
         HS_PRIO(0) |
         PS_PRIO(0) |
         VS_PRIO(1) |
         GS_PRIO(2) |
         ES_PRIO(3));

  sq_gpr_resource_mgmt_1 = (NUM_PS_GPRS(num_ps_gprs) |
       NUM_VS_GPRS(num_vs_gprs) |
       NUM_CLAUSE_TEMP_GPRS(num_temp_gprs));
  sq_gpr_resource_mgmt_2 = (NUM_GS_GPRS(num_gs_gprs) |
       NUM_ES_GPRS(num_es_gprs));
  sq_gpr_resource_mgmt_3 = (NUM_HS_GPRS(num_hs_gprs) |
       NUM_LS_GPRS(num_ls_gprs));
  sq_thread_resource_mgmt = (NUM_PS_THREADS(num_ps_threads) |
        NUM_VS_THREADS(num_vs_threads) |
        NUM_GS_THREADS(num_gs_threads) |
        NUM_ES_THREADS(num_es_threads));
  sq_thread_resource_mgmt_2 = (NUM_HS_THREADS(num_hs_threads) |
          NUM_LS_THREADS(num_ls_threads));
  sq_stack_resource_mgmt_1 = (NUM_PS_STACK_ENTRIES(num_ps_stack_entries) |
         NUM_VS_STACK_ENTRIES(num_vs_stack_entries));
  sq_stack_resource_mgmt_2 = (NUM_GS_STACK_ENTRIES(num_gs_stack_entries) |
         NUM_ES_STACK_ENTRIES(num_es_stack_entries));
  sq_stack_resource_mgmt_3 = (NUM_HS_STACK_ENTRIES(num_hs_stack_entries) |
         NUM_LS_STACK_ENTRIES(num_ls_stack_entries));


  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, (SQ_DYN_GPR_CNTL_PS_FLUSH_REQ - PACKET3_SET_CONFIG_REG_START) >> 2);
  radeon_ring_write(ring, 0);


  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, (SQ_LDS_RESOURCE_MGMT - PACKET3_SET_CONFIG_REG_START) >> 2);
  radeon_ring_write(ring, 0x10001000);


  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 11));
  radeon_ring_write(ring, (SQ_CONFIG - PACKET3_SET_CONFIG_REG_START) >> 2);
  radeon_ring_write(ring, sq_config);
  radeon_ring_write(ring, sq_gpr_resource_mgmt_1);
  radeon_ring_write(ring, sq_gpr_resource_mgmt_2);
  radeon_ring_write(ring, sq_gpr_resource_mgmt_3);
  radeon_ring_write(ring, 0);
  radeon_ring_write(ring, 0);
  radeon_ring_write(ring, sq_thread_resource_mgmt);
  radeon_ring_write(ring, sq_thread_resource_mgmt_2);
  radeon_ring_write(ring, sq_stack_resource_mgmt_1);
  radeon_ring_write(ring, sq_stack_resource_mgmt_2);
  radeon_ring_write(ring, sq_stack_resource_mgmt_3);
 }


 radeon_ring_write(ring, 0xc0012800);
 radeon_ring_write(ring, 0x80000000);
 radeon_ring_write(ring, 0x80000000);


 radeon_ring_write(ring, 0xc0026f00);
 radeon_ring_write(ring, 0x00000000);
 radeon_ring_write(ring, 0x00000000);
 radeon_ring_write(ring, 0x00000000);


 radeon_ring_write(ring, 0xc0036e00);
 radeon_ring_write(ring, 0x00000000);
 radeon_ring_write(ring, 0x00000012);
 radeon_ring_write(ring, 0x00000000);
 radeon_ring_write(ring, 0x00000000);


 radeon_ring_write(ring, PACKET3(PACKET3_MODE_CONTROL, 0));
 radeon_ring_write(ring, 1);


 dwords = ALIGN(rdev->r600_blit.state_len, 0x10);
 gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.state_offset;
 radeon_ring_write(ring, PACKET3(PACKET3_INDIRECT_BUFFER, 2));
 radeon_ring_write(ring, gpu_addr & 0xFFFFFFFC);
 radeon_ring_write(ring, upper_32_bits(gpu_addr) & 0xFF);
 radeon_ring_write(ring, dwords);

}
