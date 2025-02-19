
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int writeback_works; scalar_t__ usec_timeout; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_INFO (char*,...) ;
 int DRM_UDELAY (int) ;
 int R600_BUF_SWAP_32BIT ;
 int R600_CP_RB_CNTL ;
 int R600_RB_NO_UPDATE ;
 int R600_SCRATCHOFF (int) ;
 int R600_SCRATCH_REG1 ;
 int R600_SCRATCH_UMSK ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int radeon_no_wb ;
 scalar_t__ radeon_read_ring_rptr (TYPE_1__*,int ) ;
 int radeon_write_ring_rptr (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void r600_test_writeback(drm_radeon_private_t *dev_priv)
{
 u32 tmp;


 dev_priv->writeback_works = 0;




 radeon_write_ring_rptr(dev_priv, R600_SCRATCHOFF(1), 0);

 RADEON_WRITE(R600_SCRATCH_REG1, 0xdeadbeef);

 for (tmp = 0; tmp < dev_priv->usec_timeout; tmp++) {
  u32 val;

  val = radeon_read_ring_rptr(dev_priv, R600_SCRATCHOFF(1));
  if (val == 0xdeadbeef)
   break;
  DRM_UDELAY(1);
 }

 if (tmp < dev_priv->usec_timeout) {
  dev_priv->writeback_works = 1;
  DRM_INFO("writeback test succeeded in %d usecs\n", tmp);
 } else {
  dev_priv->writeback_works = 0;
  DRM_INFO("writeback test failed\n");
 }
 if (radeon_no_wb == 1) {
  dev_priv->writeback_works = 0;
  DRM_INFO("writeback forced off\n");
 }

 if (!dev_priv->writeback_works) {

  RADEON_WRITE(R600_CP_RB_CNTL,



        RADEON_READ(R600_CP_RB_CNTL) |
        R600_RB_NO_UPDATE);
  RADEON_WRITE(R600_SCRATCH_UMSK, 0);
 }
}
