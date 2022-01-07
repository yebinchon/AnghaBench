
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* man; } ;
struct TYPE_6__ {TYPE_2__ bdev; } ;
struct radeon_device {TYPE_3__ mman; } ;
struct drm_info_list {char* name; int * data; scalar_t__ driver_features; int * show; } ;
struct TYPE_4__ {int * priv; } ;


 int RADEON_DEBUGFS_MEM_TYPES ;
 size_t TTM_PL_TT ;
 size_t TTM_PL_VRAM ;
 int radeon_debugfs_add_files (struct radeon_device*,struct drm_info_list*,unsigned int) ;
 int radeon_mm_dump_table ;
 int sprintf (char*,char*) ;
 scalar_t__ swiotlb_nr_tbl () ;
 int ttm_dma_page_alloc_debugfs ;
 int ttm_page_alloc_debugfs ;

__attribute__((used)) static int radeon_ttm_debugfs_init(struct radeon_device *rdev)
{
 return 0;
}
