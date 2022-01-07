; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Expecting atombios for evergreen GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GPU reset failed !\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"radeon: MC ucode required for NI+.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @radeon_get_bios(%struct.radeon_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %200

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %200

28:                                               ; preds = %16
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @radeon_atombios_init(%struct.radeon_device* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %200

35:                                               ; preds = %28
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i64 @radeon_asic_reset(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @radeon_card_posted(%struct.radeon_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %44
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %200

60:                                               ; preds = %48
  %61 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @atom_asic_init(i32 %65)
  br label %67

67:                                               ; preds = %60, %44
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = call i32 @r600_scratch_init(%struct.radeon_device* %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @radeon_surface_init(%struct.radeon_device* %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @radeon_get_clock_info(i32 %74)
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %200

82:                                               ; preds = %67
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RADEON_IS_AGP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = call i32 @radeon_agp_init(%struct.radeon_device* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = call i32 @radeon_agp_disable(%struct.radeon_device* %95)
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %82
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @evergreen_mc_init(%struct.radeon_device* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %200

105:                                              ; preds = %98
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = call i32 @radeon_bo_init(%struct.radeon_device* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %200

112:                                              ; preds = %105
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 5
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 5
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %123
  %125 = call i32 @r600_ring_init(%struct.radeon_device* %119, %struct.TYPE_6__* %124, i32 1048576)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 5
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 5
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %136
  %138 = call i32 @r600_ring_init(%struct.radeon_device* %132, %struct.TYPE_6__* %137, i32 65536)
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = call i32 @r600_ih_ring_init(%struct.radeon_device* %142, i32 65536)
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %112
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %200

150:                                              ; preds = %112
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = call i32 @evergreen_startup(%struct.radeon_device* %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %150
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = call i32 @r700_cp_fini(%struct.radeon_device* %162)
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = call i32 @r600_dma_fini(%struct.radeon_device* %164)
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = call i32 @r600_irq_fini(%struct.radeon_device* %166)
  %168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %169 = call i32 @radeon_wb_fini(%struct.radeon_device* %168)
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %170)
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %172)
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @evergreen_pcie_gart_fini(%struct.radeon_device* %174)
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %157, %150
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %178
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %182
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @RADEON_IS_IGP, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %187
  %195 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %200

198:                                              ; preds = %187, %182
  br label %199

199:                                              ; preds = %198, %178
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %194, %148, %110, %103, %80, %53, %33, %21, %12
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i64 @radeon_asic_reset(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @r600_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_startup(%struct.radeon_device*) #1

declare dso_local i32 @r700_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_pcie_gart_fini(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
