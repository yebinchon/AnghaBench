; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_do_init_cp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_do_init_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %struct.TYPE_21__, i32, %struct.TYPE_20__, %struct.TYPE_16__*, i64, %struct.TYPE_16__*, i8*, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_20__ = type { i32*, i32*, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_23__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_NEW_MEMMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Cannot initialise DRM on this card\0AThis card requires a new X.org DDX for 3D\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Forcing AGP card to PCI mode\0A\00", align 1
@radeon_no_wb = common dso_local global i32 0, align 4
@RADEON_IS_PCI = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Restoring AGP flag\0A\00", align 1
@RADEON_MAX_USEC_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"TIMEOUT problem!\0A\00", align 1
@DRM_RADEON_VBLANK_CRTC1 = common dso_local global i32 0, align 4
@RADEON_CSQ_PRIBM_INDDIS = common dso_local global i64 0, align 8
@RADEON_CSQ_PRIBM_INDBM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"BAD cp_mode (%x)!\0A\00", align 1
@RADEON_COLOR_FORMAT_RGB565 = common dso_local global i32 0, align 4
@RADEON_COLOR_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"could not find sarea!\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"could not find cp ring region!\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"could not find ring read pointer!\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"could not find dma buffer region!\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"could not find GART texture region!\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"dev_priv->cp_ring->handle %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"dev_priv->ring_rptr->handle %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"dev->agp_buffer_map->handle %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Setting GART location based on new memory map\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"GART aligned down from 0x%08x to 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"fb 0x%08x size %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"dev_priv->gart_size %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"dev_priv->gart_vm_start 0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"dev_priv->gart_buffers_offset 0x%08lx\0A\00", align 1
@RADEON_RING_HIGH_MARK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"Need gart offset from userspace\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Using gart offset 0x%08lx\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"ioremap failed.\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Setting phys_pci_gart to %p %08lX\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Failed to init GART table\0A\00", align 1
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_do_init_cp(%struct.drm_device* %0, %struct.TYPE_23__* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.drm_radeon_master_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %8, align 8
  %15 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %16 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %18, align 8
  store %struct.drm_radeon_master_private* %19, %struct.drm_radeon_master_private** %9, align 8
  %20 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 36
  %23 = call i32 @mutex_init(i32* %22)
  %24 = call i32 (...) @r600_cs_legacy_init()
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RADEON_NEW_MEMMAP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 26
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %732

42:                                               ; preds = %31, %3
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RADEON_IS_AGP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @RADEON_IS_AGP, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  store i32 1, i32* @radeon_no_wb, align 4
  br label %86

62:                                               ; preds = %47, %42
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RADEON_IS_AGP, align 4
  %67 = load i32, i32* @RADEON_IS_PCI, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RADEON_IS_PCIE, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %65, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %62
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 13
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @RADEON_IS_AGP, align 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %78, %73, %62
  br label %86

86:                                               ; preds = %85, %54
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %102, label %96

96:                                               ; preds = %86
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RADEON_MAX_USEC_TIMEOUT, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96, %86
  %103 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %105 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %732

108:                                              ; preds = %96
  %109 = load i32, i32* @DRM_RADEON_VBLANK_CRTC1, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 35
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 34
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RADEON_CSQ_PRIBM_INDDIS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %108
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RADEON_CSQ_PRIBM_INDBM, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %133)
  %135 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %136 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %732

139:                                              ; preds = %124, %108
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %148 [
    i32 16, label %143
    i32 32, label %147
  ]

143:                                              ; preds = %139
  %144 = load i32, i32* @RADEON_COLOR_FORMAT_RGB565, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 33
  store i32 %144, i32* %146, align 8
  br label %152

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %139, %147
  %149 = load i32, i32* @RADEON_COLOR_FORMAT_ARGB8888, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 33
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %143
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 6
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 32
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 31
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 30
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 29
  store i32 %190, i32* %192, align 8
  %193 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %194 = call i32 @drm_getsarea(%struct.drm_device* %193)
  %195 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %9, align 8
  %196 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %9, align 8
  %198 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %152
  %202 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %203 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %204 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %203)
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %732

207:                                              ; preds = %152
  %208 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @drm_core_findmap(%struct.drm_device* %208, i32 %211)
  %213 = bitcast i8* %212 to %struct.TYPE_16__*
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 25
  store %struct.TYPE_16__* %213, %struct.TYPE_16__** %215, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 25
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = icmp ne %struct.TYPE_16__* %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %207
  %221 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %222 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %223 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %222)
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %4, align 4
  br label %732

226:                                              ; preds = %207
  %227 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @drm_core_findmap(%struct.drm_device* %227, i32 %230)
  %232 = bitcast i8* %231 to %struct.TYPE_16__*
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 27
  store %struct.TYPE_16__* %232, %struct.TYPE_16__** %234, align 8
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 27
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = icmp ne %struct.TYPE_16__* %237, null
  br i1 %238, label %245, label %239

239:                                              ; preds = %226
  %240 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %241 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %242 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %241)
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %4, align 4
  br label %732

245:                                              ; preds = %226
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %250 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 8
  %251 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = call i8* @drm_core_findmap(%struct.drm_device* %251, i32 %254)
  %256 = bitcast i8* %255 to %struct.TYPE_16__*
  %257 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %258 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %257, i32 0, i32 1
  store %struct.TYPE_16__* %256, %struct.TYPE_16__** %258, align 8
  %259 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %260 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %259, i32 0, i32 1
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  %262 = icmp ne %struct.TYPE_16__* %261, null
  br i1 %262, label %269, label %263

263:                                              ; preds = %245
  %264 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %265 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %266 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %265)
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %4, align 4
  br label %732

269:                                              ; preds = %245
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %269
  %275 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 4
  %279 = call i8* @drm_core_findmap(%struct.drm_device* %275, i32 %278)
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 28
  store i8* %279, i8** %281, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 28
  %284 = load i8*, i8** %283, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %292, label %286

286:                                              ; preds = %274
  %287 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %288 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %289 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %288)
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %4, align 4
  br label %732

292:                                              ; preds = %274
  br label %293

293:                                              ; preds = %292, %269
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 25
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = inttoptr i64 %298 to i8*
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 25
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  store i32 %300, i32* %304, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 27
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = inttoptr i64 %309 to i8*
  %311 = ptrtoint i8* %310 to i32
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 27
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  store i32 %311, i32* %315, align 8
  %316 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %317 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %316, i32 0, i32 1
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = inttoptr i64 %320 to i8*
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %324 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %323, i32 0, i32 1
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  store i32 %322, i32* %326, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 25
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %331)
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 27
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %337)
  %339 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %340 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %339, i32 0, i32 1
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %343)
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %346 = call i32 @radeon_read_fb_location(%struct.TYPE_22__* %345)
  %347 = and i32 %346, 65535
  %348 = shl i32 %347, 24
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i32 0, i32 7
  store i32 %348, i32* %350, align 8
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %352 = call i32 @radeon_read_fb_location(%struct.TYPE_22__* %351)
  %353 = and i32 %352, -65536
  %354 = shl i32 %353, 8
  %355 = add i32 %354, 16777216
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 7
  %358 = load i32, i32* %357, align 8
  %359 = sub i32 %355, %358
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 8
  store i32 %359, i32* %361, align 4
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = sdiv i32 %364, 64
  %366 = shl i32 %365, 22
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 7
  %372 = load i32, i32* %371, align 8
  %373 = add nsw i32 %369, %372
  %374 = ashr i32 %373, 10
  %375 = or i32 %366, %374
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 9
  store i32 %375, i32* %377, align 8
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 6
  %380 = load i32, i32* %379, align 4
  %381 = sdiv i32 %380, 64
  %382 = shl i32 %381, 22
  %383 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 8
  %389 = add nsw i32 %385, %388
  %390 = ashr i32 %389, 10
  %391 = or i32 %382, %390
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 10
  store i32 %391, i32* %393, align 4
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 12
  %396 = load i32, i32* %395, align 4
  %397 = sdiv i32 %396, 64
  %398 = shl i32 %397, 22
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 13
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 8
  %405 = add nsw i32 %401, %404
  %406 = ashr i32 %405, 10
  %407 = or i32 %398, %406
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 11
  store i32 %407, i32* %409, align 8
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 7
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 14
  store i32 %412, i32* %414, align 4
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 26
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %473

419:                                              ; preds = %293
  store i32 0, i32* %10, align 4
  %420 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  %421 = load i32, i32* %10, align 4
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %456

423:                                              ; preds = %419
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 7
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 8
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %426, %429
  store i32 %430, i32* %10, align 4
  %431 = load i32, i32* %10, align 4
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 8
  %435 = icmp slt i32 %431, %434
  br i1 %435, label %447, label %436

436:                                              ; preds = %423
  %437 = load i32, i32* %10, align 4
  %438 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %438, i32 0, i32 14
  %440 = load i32, i32* %439, align 4
  %441 = add nsw i32 %437, %440
  %442 = sext i32 %441 to i64
  %443 = and i64 %442, 4294967295
  %444 = load i32, i32* %10, align 4
  %445 = sext i32 %444 to i64
  %446 = icmp ult i64 %443, %445
  br i1 %446, label %447, label %455

447:                                              ; preds = %436, %423
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 7
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 14
  %453 = load i32, i32* %452, align 4
  %454 = sub nsw i32 %450, %453
  store i32 %454, i32* %10, align 4
  br label %455

455:                                              ; preds = %447, %436
  br label %456

456:                                              ; preds = %455, %419
  %457 = load i32, i32* %10, align 4
  %458 = and i32 %457, -4194304
  %459 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %459, i32 0, i32 15
  store i32 %458, i32* %460, align 8
  %461 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %461, i32 0, i32 15
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* %10, align 4
  %465 = icmp ne i32 %463, %464
  br i1 %465, label %466, label %472

466:                                              ; preds = %456
  %467 = load i32, i32* %10, align 4
  %468 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %469 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %468, i32 0, i32 15
  %470 = load i32, i32* %469, align 8
  %471 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %467, i32 %470)
  br label %472

472:                                              ; preds = %466, %456
  br label %473

473:                                              ; preds = %472, %293
  %474 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %475 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %474, i32 0, i32 1
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i32 0, i32 1
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %480 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %479, i32 0, i32 0
  %481 = load %struct.TYPE_19__*, %struct.TYPE_19__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = sub i64 %478, %483
  %485 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %485, i32 0, i32 15
  %487 = load i32, i32* %486, align 8
  %488 = sext i32 %487 to i64
  %489 = add i64 %484, %488
  %490 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 16
  store i64 %489, i64* %491, align 8
  %492 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %492, i32 0, i32 7
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 8
  %497 = load i32, i32* %496, align 4
  %498 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %494, i32 %497)
  %499 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 14
  %501 = load i32, i32* %500, align 4
  %502 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %501)
  %503 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %504 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %503, i32 0, i32 15
  %505 = load i32, i32* %504, align 8
  %506 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %505)
  %507 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %507, i32 0, i32 16
  %509 = load i64, i64* %508, align 8
  %510 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i64 %509)
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %511, i32 0, i32 25
  %513 = load %struct.TYPE_16__*, %struct.TYPE_16__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = zext i32 %515 to i64
  %517 = inttoptr i64 %516 to i32*
  %518 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %519 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %518, i32 0, i32 24
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 0
  store i32* %517, i32** %520, align 8
  %521 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %522 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %521, i32 0, i32 25
  %523 = load %struct.TYPE_16__*, %struct.TYPE_16__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = zext i32 %525 to i64
  %527 = inttoptr i64 %526 to i32*
  %528 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %529 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %528, i32 0, i32 8
  %530 = load i32, i32* %529, align 8
  %531 = sext i32 %530 to i64
  %532 = udiv i64 %531, 4
  %533 = getelementptr inbounds i32, i32* %527, i64 %532
  %534 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %535 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %534, i32 0, i32 24
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 1
  store i32* %533, i32** %536, align 8
  %537 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %537, i32 0, i32 8
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %540, i32 0, i32 24
  %542 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %541, i32 0, i32 2
  store i32 %539, i32* %542, align 8
  %543 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %544 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %543, i32 0, i32 8
  %545 = load i32, i32* %544, align 8
  %546 = sdiv i32 %545, 8
  %547 = call i8* @drm_order(i32 %546)
  %548 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %549 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %548, i32 0, i32 24
  %550 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %549, i32 0, i32 9
  store i8* %547, i8** %550, align 8
  %551 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %552 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %551, i32 0, i32 24
  %553 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %552, i32 0, i32 3
  store i32 4096, i32* %553, align 4
  %554 = call i8* @drm_order(i32 512)
  %555 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %556 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %555, i32 0, i32 24
  %557 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %556, i32 0, i32 8
  store i8* %554, i8** %557, align 8
  %558 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %559 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %558, i32 0, i32 24
  %560 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %559, i32 0, i32 4
  store i32 32, i32* %560, align 8
  %561 = call i8* @drm_order(i32 2)
  %562 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %563 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %562, i32 0, i32 24
  %564 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %563, i32 0, i32 7
  store i8* %561, i8** %564, align 8
  %565 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %566 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %565, i32 0, i32 24
  %567 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %566, i32 0, i32 2
  %568 = load i32, i32* %567, align 8
  %569 = sext i32 %568 to i64
  %570 = udiv i64 %569, 4
  %571 = sub i64 %570, 1
  %572 = trunc i64 %571 to i32
  %573 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %574 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %573, i32 0, i32 24
  %575 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %574, i32 0, i32 5
  store i32 %572, i32* %575, align 4
  %576 = load i32, i32* @RADEON_RING_HIGH_MARK, align 4
  %577 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %577, i32 0, i32 24
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i32 0, i32 6
  store i32 %576, i32* %579, align 8
  %580 = call i32 @DMA_BIT_MASK(i32 32)
  %581 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %582 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %581, i32 0, i32 22
  %583 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %582, i32 0, i32 4
  store i32 %580, i32* %583, align 4
  %584 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %585 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %584, i32 0, i32 23
  %586 = load i32, i32* %585, align 8
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %594, label %588

588:                                              ; preds = %473
  %589 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %590 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %591 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %590)
  %592 = load i32, i32* @EINVAL, align 4
  %593 = sub nsw i32 0, %592
  store i32 %593, i32* %4, align 4
  br label %732

594:                                              ; preds = %473
  %595 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %596 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %595, i32 0, i32 17
  %597 = load i32, i32* %596, align 8
  %598 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %597)
  %599 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %600 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %599, i32 0, i32 17
  %601 = load i32, i32* %600, align 8
  %602 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %603 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %602, i32 0, i32 7
  %604 = load i32, i32* %603, align 8
  %605 = add i32 %601, %604
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 22
  %608 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %607, i32 0, i32 0
  store i32 %605, i32* %608, align 8
  %609 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %610 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %609, i32 0, i32 17
  %611 = load i32, i32* %610, align 8
  %612 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %613 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %612, i32 0, i32 18
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %611, %614
  %616 = zext i32 %615 to i64
  %617 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %618 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %617, i32 0, i32 22
  %619 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %618, i32 0, i32 2
  %620 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %619, i32 0, i32 1
  store i64 %616, i64* %620, align 8
  %621 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %622 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %621, i32 0, i32 22
  %623 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %622, i32 0, i32 3
  %624 = load i32, i32* %623, align 8
  %625 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %626 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %625, i32 0, i32 22
  %627 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %627, i32 0, i32 2
  store i32 %624, i32* %628, align 8
  %629 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %630 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %629, i32 0, i32 22
  %631 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %630, i32 0, i32 2
  %632 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %633 = call i32 @drm_core_ioremap_wc(%struct.TYPE_16__* %631, %struct.drm_device* %632)
  %634 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %635 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %634, i32 0, i32 22
  %636 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %635, i32 0, i32 2
  %637 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %646, label %640

640:                                              ; preds = %594
  %641 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %642 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %643 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %642)
  %644 = load i32, i32* @EINVAL, align 4
  %645 = sub nsw i32 0, %644
  store i32 %645, i32* %4, align 4
  br label %732

646:                                              ; preds = %594
  %647 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %648 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %647, i32 0, i32 22
  %649 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %648, i32 0, i32 2
  %650 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %653 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %652, i32 0, i32 22
  %654 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %653, i32 0, i32 1
  store i32 %651, i32* %654, align 4
  %655 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %656 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %655, i32 0, i32 22
  %657 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %656, i32 0, i32 1
  %658 = load i32, i32* %657, align 4
  %659 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %660 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %659, i32 0, i32 17
  %661 = load i32, i32* %660, align 8
  %662 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 %658, i32 %661)
  %663 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %664 = call i32 @r600_page_table_init(%struct.drm_device* %663)
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %672, label %666

666:                                              ; preds = %646
  %667 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %668 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %669 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %668)
  %670 = load i32, i32* @EINVAL, align 4
  %671 = sub nsw i32 0, %670
  store i32 %671, i32* %4, align 4
  br label %732

672:                                              ; preds = %646
  %673 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %674 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %677 = and i32 %675, %676
  %678 = load i32, i32* @CHIP_RV770, align 4
  %679 = icmp sge i32 %677, %678
  br i1 %679, label %680, label %683

680:                                              ; preds = %672
  %681 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %682 = call i32 @r700_vm_init(%struct.drm_device* %681)
  br label %686

683:                                              ; preds = %672
  %684 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %685 = call i32 @r600_vm_init(%struct.drm_device* %684)
  br label %686

686:                                              ; preds = %683, %680
  %687 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %688 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %687, i32 0, i32 21
  %689 = load i32, i32* %688, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %696

691:                                              ; preds = %686
  %692 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %693 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %692, i32 0, i32 20
  %694 = load i32, i32* %693, align 8
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %707, label %696

696:                                              ; preds = %691, %686
  %697 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %698 = call i32 @r600_cp_init_microcode(%struct.TYPE_22__* %697)
  store i32 %698, i32* %11, align 4
  %699 = load i32, i32* %11, align 4
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %706

701:                                              ; preds = %696
  %702 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  %703 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %704 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %703)
  %705 = load i32, i32* %11, align 4
  store i32 %705, i32* %4, align 4
  br label %732

706:                                              ; preds = %696
  br label %707

707:                                              ; preds = %706, %691
  %708 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %709 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %712 = and i32 %710, %711
  %713 = load i32, i32* @CHIP_RV770, align 4
  %714 = icmp sge i32 %712, %713
  br i1 %714, label %715, label %718

715:                                              ; preds = %707
  %716 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %717 = call i32 @r700_cp_load_microcode(%struct.TYPE_22__* %716)
  br label %721

718:                                              ; preds = %707
  %719 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %720 = call i32 @r600_cp_load_microcode(%struct.TYPE_22__* %719)
  br label %721

721:                                              ; preds = %718, %715
  %722 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %723 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %724 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %725 = call i32 @r600_cp_init_ring_buffer(%struct.drm_device* %722, %struct.TYPE_22__* %723, %struct.drm_file* %724)
  %726 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %727 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %726, i32 0, i32 19
  store i64 0, i64* %727, align 8
  %728 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %729 = call i32 @r600_do_engine_reset(%struct.drm_device* %728)
  %730 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %731 = call i32 @r600_test_writeback(%struct.TYPE_22__* %730)
  store i32 0, i32* %4, align 4
  br label %732

732:                                              ; preds = %721, %701, %666, %640, %588, %286, %263, %239, %220, %201, %130, %102, %36
  %733 = load i32, i32* %4, align 4
  ret i32 %733
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @r600_cs_legacy_init(...) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @r600_do_cleanup_cp(%struct.drm_device*) #1

declare dso_local i32 @drm_getsarea(%struct.drm_device*) #1

declare dso_local i8* @drm_core_findmap(%struct.drm_device*, i32) #1

declare dso_local i32 @radeon_read_fb_location(%struct.TYPE_22__*) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i8* @drm_order(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @drm_core_ioremap_wc(%struct.TYPE_16__*, %struct.drm_device*) #1

declare dso_local i32 @r600_page_table_init(%struct.drm_device*) #1

declare dso_local i32 @r700_vm_init(%struct.drm_device*) #1

declare dso_local i32 @r600_vm_init(%struct.drm_device*) #1

declare dso_local i32 @r600_cp_init_microcode(%struct.TYPE_22__*) #1

declare dso_local i32 @r700_cp_load_microcode(%struct.TYPE_22__*) #1

declare dso_local i32 @r600_cp_load_microcode(%struct.TYPE_22__*) #1

declare dso_local i32 @r600_cp_init_ring_buffer(%struct.drm_device*, %struct.TYPE_22__*, %struct.drm_file*) #1

declare dso_local i32 @r600_do_engine_reset(%struct.drm_device*) #1

declare dso_local i32 @r600_test_writeback(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
