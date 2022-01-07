; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs400.c_rs400_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs400.c_rs400_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RS690_AIC_CTRL_SCRATCH = common dso_local global i32 0, align 4
@RS690_DIS_OUT_OF_PCI_GART_ACCESS = common dso_local global i32 0, align 4
@RS480_VA_SIZE_32MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_64MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_128MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_256MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_512MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_1GB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_2GB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i64 0, align 8
@CHIP_RS740 = common dso_local global i64 0, align 8
@RS690_MCCFG_AGP_BASE = common dso_local global i32 0, align 4
@RS690_MCCFG_AGP_BASE_2 = common dso_local global i32 0, align 4
@RADEON_AGP_BASE = common dso_local global i32 0, align 4
@RS480_AGP_BASE_2 = common dso_local global i32 0, align 4
@RS690_MC_AGP_TOP = common dso_local global i32 0, align 4
@RS690_MC_AGP_START = common dso_local global i32 0, align 4
@RS690_MCCFG_AGP_LOCATION = common dso_local global i32 0, align 4
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RS600_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@RADEON_MC_AGP_LOCATION = common dso_local global i32 0, align 4
@RADEON_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@RS480_GART_BASE = common dso_local global i32 0, align 4
@RS480_GART_FEATURE_ID = common dso_local global i32 0, align 4
@RS480_TLB_ENABLE = common dso_local global i32 0, align 4
@RS480_GTW_LAC_EN = common dso_local global i32 0, align 4
@RS480_1LEVEL_GART = common dso_local global i32 0, align 4
@RS480_AGP_MODE_CNTL = common dso_local global i32 0, align 4
@RS480_REQ_TYPE_SNOOP_SHIFT = common dso_local global i32 0, align 4
@RS480_REQ_TYPE_SNOOP_DIS = common dso_local global i32 0, align 4
@RS480_MC_MISC_CNTL = common dso_local global i32 0, align 4
@RS480_GART_INDEX_REG_EN = common dso_local global i32 0, align 4
@RS690_BLOCK_GFX_D3_EN = common dso_local global i32 0, align 4
@RS480_AGP_ADDRESS_SPACE_SIZE = common dso_local global i32 0, align 4
@RS480_GART_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs400_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @radeon_gart_restore(%struct.radeon_device* %6)
  %8 = load i32, i32* @RS690_AIC_CTRL_SCRATCH, align 4
  %9 = call i32 @RREG32_MC(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @RS690_DIS_OUT_OF_PCI_GART_ACCESS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @RS690_AIC_CTRL_SCRATCH, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @WREG32_MC(i32 %13, i32 %14)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 1048576
  switch i32 %20, label %35 [
    i32 32, label %21
    i32 64, label %23
    i32 128, label %25
    i32 256, label %27
    i32 512, label %29
    i32 1024, label %31
    i32 2048, label %33
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @RS480_VA_SIZE_32MB, align 4
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %1
  %24 = load i32, i32* @RS480_VA_SIZE_64MB, align 4
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %1
  %26 = load i32, i32* @RS480_VA_SIZE_128MB, align 4
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* @RS480_VA_SIZE_256MB, align 4
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @RS480_VA_SIZE_512MB, align 4
  store i32 %30, i32* %4, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load i32, i32* @RS480_VA_SIZE_1GB, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load i32, i32* @RS480_VA_SIZE_2GB, align 4
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %186

38:                                               ; preds = %33, %31, %29, %27, %25, %23, %21
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_RS690, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_RS740, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @RS690_MCCFG_AGP_BASE, align 4
  %52 = call i32 @WREG32_MC(i32 %51, i32 -1)
  %53 = load i32, i32* @RS690_MCCFG_AGP_BASE_2, align 4
  %54 = call i32 @WREG32_MC(i32 %53, i32 0)
  br label %60

55:                                               ; preds = %44
  %56 = load i32, i32* @RADEON_AGP_BASE, align 4
  %57 = call i32 @WREG32(i32 %56, i32 -1)
  %58 = load i32, i32* @RS480_AGP_BASE_2, align 4
  %59 = call i32 @WREG32(i32 %58, i32 0)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @RS690_MC_AGP_TOP, align 4
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 16
  %67 = call i32 @REG_SET(i32 %61, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @RS690_MC_AGP_START, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 16
  %74 = call i32 @REG_SET(i32 %68, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CHIP_RS690, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %60
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CHIP_RS740, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82, %60
  %89 = load i32, i32* @RS690_MCCFG_AGP_LOCATION, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @WREG32_MC(i32 %89, i32 %90)
  %92 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %93 = call i32 @RREG32(i32 %92)
  %94 = load i32, i32* @RS600_BUS_MASTER_DIS, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @WREG32(i32 %97, i32 %98)
  br label %112

100:                                              ; preds = %82
  %101 = load i32, i32* @RADEON_MC_AGP_LOCATION, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @WREG32(i32 %101, i32 %102)
  %104 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %105 = call i32 @RREG32(i32 %104)
  %106 = load i32, i32* @RADEON_BUS_MASTER_DIS, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @WREG32(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %100, %88
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = and i32 %117, -4096
  store i32 %118, i32* %5, align 4
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @upper_32_bits(i64 %122)
  %124 = and i32 %123, 255
  %125 = shl i32 %124, 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @RS480_GART_BASE, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @WREG32_MC(i32 %128, i32 %129)
  %131 = load i32, i32* @RS480_GART_FEATURE_ID, align 4
  %132 = load i32, i32* @RS480_TLB_ENABLE, align 4
  %133 = load i32, i32* @RS480_GTW_LAC_EN, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @RS480_1LEVEL_GART, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @WREG32_MC(i32 %131, i32 %136)
  %138 = load i32, i32* @RS480_AGP_MODE_CNTL, align 4
  %139 = load i32, i32* @RS480_REQ_TYPE_SNOOP_SHIFT, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* @RS480_REQ_TYPE_SNOOP_DIS, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @WREG32_MC(i32 %138, i32 %142)
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CHIP_RS690, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %112
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CHIP_RS740, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149, %112
  %156 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %157 = load i32, i32* @RS480_GART_INDEX_REG_EN, align 4
  %158 = load i32, i32* @RS690_BLOCK_GFX_D3_EN, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @WREG32_MC(i32 %156, i32 %159)
  br label %165

161:                                              ; preds = %149
  %162 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %163 = load i32, i32* @RS480_GART_INDEX_REG_EN, align 4
  %164 = call i32 @WREG32_MC(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %155
  %166 = load i32, i32* @RS480_AGP_ADDRESS_SPACE_SIZE, align 4
  %167 = load i32, i32* @RS480_GART_EN, align 4
  %168 = load i32, i32* %4, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @WREG32_MC(i32 %166, i32 %169)
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = call i32 @rs400_gart_tlb_flush(%struct.radeon_device* %171)
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = ashr i32 %176, 20
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %177, i64 %181)
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %165, %35
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_MC(i32) #1

declare dso_local i32 @WREG32_MC(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @rs400_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
