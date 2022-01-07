; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to register debugfs file for mc !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Expecting atombios for R600 GPU\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i64 @r600_debugfs_mc_info_init(%struct.radeon_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @radeon_get_bios(%struct.radeon_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %176

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %176

34:                                               ; preds = %22
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @radeon_atombios_init(%struct.radeon_device* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %176

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @radeon_card_posted(%struct.radeon_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %176

57:                                               ; preds = %45
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @atom_asic_init(i32 %62)
  br label %64

64:                                               ; preds = %57, %41
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @r600_scratch_init(%struct.radeon_device* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @radeon_surface_init(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @radeon_get_clock_info(i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %176

79:                                               ; preds = %64
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RADEON_IS_AGP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @radeon_agp_init(%struct.radeon_device* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = call i32 @radeon_agp_disable(%struct.radeon_device* %92)
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %79
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @r600_mc_init(%struct.radeon_device* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %176

102:                                              ; preds = %95
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @radeon_bo_init(%struct.radeon_device* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %176

109:                                              ; preds = %102
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %120
  %122 = call i32 @r600_ring_init(%struct.radeon_device* %116, %struct.TYPE_6__* %121, i32 1048576)
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %133
  %135 = call i32 @r600_ring_init(%struct.radeon_device* %129, %struct.TYPE_6__* %134, i32 65536)
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = call i32 @r600_ih_ring_init(%struct.radeon_device* %139, i32 65536)
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %109
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %176

147:                                              ; preds = %109
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = call i32 @r600_startup(%struct.radeon_device* %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %147
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_err(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = call i32 @r600_cp_fini(%struct.radeon_device* %159)
  %161 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %162 = call i32 @r600_dma_fini(%struct.radeon_device* %161)
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = call i32 @r600_irq_fini(%struct.radeon_device* %163)
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = call i32 @radeon_wb_fini(%struct.radeon_device* %165)
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %167)
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %169)
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = call i32 @r600_pcie_gart_fini(%struct.radeon_device* %171)
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %154, %147
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %175, %145, %107, %100, %77, %50, %39, %27, %18
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @r600_debugfs_mc_info_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @r600_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @r600_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_startup(%struct.radeon_device*) #1

declare dso_local i32 @r600_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_pcie_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
