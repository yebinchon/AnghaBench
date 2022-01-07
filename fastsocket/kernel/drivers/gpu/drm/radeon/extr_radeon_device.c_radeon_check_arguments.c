
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int gtt_size; } ;
struct radeon_device {int dev; TYPE_1__ mc; } ;


 int dev_warn (int ,char*,int) ;
 int radeon_agpmode ;
 int radeon_check_pot_argument (int) ;
 int radeon_gart_size ;
 int radeon_vram_limit ;

__attribute__((used)) static void radeon_check_arguments(struct radeon_device *rdev)
{

 if (!radeon_check_pot_argument(radeon_vram_limit)) {
  dev_warn(rdev->dev, "vram limit (%d) must be a power of 2\n",
    radeon_vram_limit);
  radeon_vram_limit = 0;
 }


 if (radeon_gart_size < 32) {
  dev_warn(rdev->dev, "gart size (%d) too small forcing to 512M\n",
    radeon_gart_size);
  radeon_gart_size = 512;

 } else if (!radeon_check_pot_argument(radeon_gart_size)) {
  dev_warn(rdev->dev, "gart size (%d) must be a power of 2\n",
    radeon_gart_size);
  radeon_gart_size = 512;
 }
 rdev->mc.gtt_size = (uint64_t)radeon_gart_size << 20;


 switch (radeon_agpmode) {
 case -1:
 case 0:
 case 1:
 case 2:
 case 4:
 case 8:
  break;
 default:
  dev_warn(rdev->dev, "invalid AGP mode %d (valid mode: "
    "-1, 0, 1, 2, 4, 8)\n", radeon_agpmode);
  radeon_agpmode = 0;
  break;
 }
}
