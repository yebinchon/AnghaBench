; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs600.c_rs600_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs600.c_rs600_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RS600_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@R_000100_MC_PT0_CNTL = common dso_local global i64 0, align 8
@R_00016C_MC_PT0_CLIENT0_CNTL = common dso_local global i64 0, align 8
@V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH = common dso_local global i32 0, align 4
@R_000102_MC_PT0_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@V_000102_PAGE_TABLE_FLAT = common dso_local global i32 0, align 4
@R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR = common dso_local global i64 0, align 8
@R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR = common dso_local global i64 0, align 8
@R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR = common dso_local global i64 0, align 8
@R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR = common dso_local global i64 0, align 8
@R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i64 0, align 8
@R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i64 0, align 8
@R_000009_MC_CNTL1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rs600_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs600_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %149

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %149

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @radeon_gart_restore(%struct.radeon_device* %27)
  %29 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %30 = call i32 @RREG32(i32 %29)
  %31 = load i32, i32* @RS600_BUS_MASTER_DIS, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  %37 = load i64, i64* @R_000100_MC_PT0_CNTL, align 8
  %38 = call i32 @S_000100_EFFECTIVE_L2_CACHE_SIZE(i32 6)
  %39 = call i32 @S_000100_EFFECTIVE_L2_QUEUE_SIZE(i32 6)
  %40 = or i32 %38, %39
  %41 = call i32 @WREG32_MC(i64 %37, i32 %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %64, %26
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 19
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load i64, i64* @R_00016C_MC_PT0_CLIENT0_CNTL, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @S_00016C_ENABLE_TRANSLATION_MODE_OVERRIDE(i32 1)
  %51 = load i32, i32* @V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %52 = call i32 @S_00016C_SYSTEM_ACCESS_MODE_MASK(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH, align 4
  %55 = call i32 @S_00016C_SYSTEM_APERTURE_UNMAPPED_ACCESS(i32 %54)
  %56 = or i32 %53, %55
  %57 = call i32 @S_00016C_EFFECTIVE_L1_CACHE_SIZE(i32 3)
  %58 = or i32 %56, %57
  %59 = call i32 @S_00016C_ENABLE_FRAGMENT_PROCESSING(i32 1)
  %60 = or i32 %58, %59
  %61 = call i32 @S_00016C_EFFECTIVE_L1_QUEUE_SIZE(i32 3)
  %62 = or i32 %60, %61
  %63 = call i32 @WREG32_MC(i64 %49, i32 %62)
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load i64, i64* @R_000102_MC_PT0_CONTEXT0_CNTL, align 8
  %69 = call i32 @S_000102_ENABLE_PAGE_TABLE(i32 1)
  %70 = load i32, i32* @V_000102_PAGE_TABLE_FLAT, align 4
  %71 = call i32 @S_000102_PAGE_TABLE_DEPTH(i32 %70)
  %72 = or i32 %69, %71
  %73 = call i32 @WREG32_MC(i64 %68, i32 %72)
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %83, %67
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i64, i64* @R_000102_MC_PT0_CONTEXT0_CNTL, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @WREG32_MC(i64 %81, i32 0)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %74

86:                                               ; preds = %74
  %87 = load i64, i64* @R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR, align 8
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @WREG32_MC(i64 %87, i32 %91)
  %93 = load i64, i64* @R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR, align 8
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @WREG32_MC(i64 %93, i32 %97)
  %99 = load i64, i64* @R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @WREG32_MC(i64 %99, i32 %103)
  %105 = load i64, i64* @R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR, align 8
  %106 = call i32 @WREG32_MC(i64 %105, i32 0)
  %107 = load i64, i64* @R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR, align 8
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @WREG32_MC(i64 %107, i32 %111)
  %113 = load i64, i64* @R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR, align 8
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @WREG32_MC(i64 %113, i32 %117)
  %119 = load i64, i64* @R_000100_MC_PT0_CNTL, align 8
  %120 = call i32 @RREG32_MC(i64 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i64, i64* @R_000100_MC_PT0_CNTL, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @S_000100_ENABLE_PT(i32 1)
  %124 = or i32 %122, %123
  %125 = call i32 @WREG32_MC(i64 %121, i32 %124)
  %126 = load i64, i64* @R_000009_MC_CNTL1, align 8
  %127 = call i32 @RREG32_MC(i64 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i64, i64* @R_000009_MC_CNTL1, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @S_000009_ENABLE_PAGE_TABLES(i32 1)
  %131 = or i32 %129, %130
  %132 = call i32 @WREG32_MC(i64 %128, i32 %131)
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = call i32 @rs600_gart_tlb_flush(%struct.radeon_device* %133)
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = ashr i32 %138, 20
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %139, i64 %144)
  %146 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %86, %24, %12
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_MC(i64, i32) #1

declare dso_local i32 @S_000100_EFFECTIVE_L2_CACHE_SIZE(i32) #1

declare dso_local i32 @S_000100_EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @S_00016C_ENABLE_TRANSLATION_MODE_OVERRIDE(i32) #1

declare dso_local i32 @S_00016C_SYSTEM_ACCESS_MODE_MASK(i32) #1

declare dso_local i32 @S_00016C_SYSTEM_APERTURE_UNMAPPED_ACCESS(i32) #1

declare dso_local i32 @S_00016C_EFFECTIVE_L1_CACHE_SIZE(i32) #1

declare dso_local i32 @S_00016C_ENABLE_FRAGMENT_PROCESSING(i32) #1

declare dso_local i32 @S_00016C_EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @S_000102_ENABLE_PAGE_TABLE(i32) #1

declare dso_local i32 @S_000102_PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @RREG32_MC(i64) #1

declare dso_local i32 @S_000100_ENABLE_PT(i32) #1

declare dso_local i32 @S_000009_ENABLE_PAGE_TABLES(i32) #1

declare dso_local i32 @rs600_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
