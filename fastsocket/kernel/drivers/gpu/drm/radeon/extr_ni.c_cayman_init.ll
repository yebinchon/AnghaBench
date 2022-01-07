; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.radeon_ring*, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_ring = type { i32* }
%struct.TYPE_3__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Expecting atombios for cayman GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"radeon: MC ucode required for NI+.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cayman_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 5
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %9
  store %struct.radeon_ring* %10, %struct.radeon_ring** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @radeon_get_bios(%struct.radeon_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %187

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %187

34:                                               ; preds = %22
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @radeon_atombios_init(%struct.radeon_device* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %187

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @radeon_card_posted(%struct.radeon_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %187

57:                                               ; preds = %45
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @atom_asic_init(i32 %62)
  br label %64

64:                                               ; preds = %57, %41
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @r600_scratch_init(%struct.radeon_device* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @radeon_surface_init(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @radeon_get_clock_info(i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %187

79:                                               ; preds = %64
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = call i32 @evergreen_mc_init(%struct.radeon_device* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %187

86:                                               ; preds = %79
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @radeon_bo_init(%struct.radeon_device* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %187

93:                                               ; preds = %86
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %95 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %98 = call i32 @r600_ring_init(%struct.radeon_device* %96, %struct.radeon_ring* %97, i32 1048576)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 5
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %100, align 8
  %102 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %103 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %101, i64 %102
  store %struct.radeon_ring* %103, %struct.radeon_ring** %4, align 8
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %105 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %108 = call i32 @r600_ring_init(%struct.radeon_device* %106, %struct.radeon_ring* %107, i32 65536)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 5
  %111 = load %struct.radeon_ring*, %struct.radeon_ring** %110, align 8
  %112 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %113 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %111, i64 %112
  store %struct.radeon_ring* %113, %struct.radeon_ring** %4, align 8
  %114 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %115 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %118 = call i32 @r600_ring_init(%struct.radeon_device* %116, %struct.radeon_ring* %117, i32 65536)
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32* null, i32** %121, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = call i32 @r600_ih_ring_init(%struct.radeon_device* %122, i32 65536)
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %93
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %187

130:                                              ; preds = %93
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = call i32 @cayman_startup(%struct.radeon_device* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %170

137:                                              ; preds = %130
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = call i32 @cayman_cp_fini(%struct.radeon_device* %142)
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = call i32 @cayman_dma_fini(%struct.radeon_device* %144)
  %146 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %147 = call i32 @r600_irq_fini(%struct.radeon_device* %146)
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RADEON_IS_IGP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %137
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = call i32 @si_rlc_fini(%struct.radeon_device* %155)
  br label %157

157:                                              ; preds = %154, %137
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = call i32 @radeon_wb_fini(%struct.radeon_device* %158)
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %160)
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = call i32 @radeon_vm_manager_fini(%struct.radeon_device* %162)
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %164)
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = call i32 @cayman_pcie_gart_fini(%struct.radeon_device* %166)
  %168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  br label %170

170:                                              ; preds = %157, %130
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %170
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RADEON_IS_IGP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %187

186:                                              ; preds = %175, %170
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %182, %128, %91, %84, %77, %50, %39, %27, %18
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

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

declare dso_local i32 @evergreen_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @cayman_startup(%struct.radeon_device*) #1

declare dso_local i32 @cayman_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @cayman_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @si_rlc_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vm_manager_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @cayman_pcie_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
