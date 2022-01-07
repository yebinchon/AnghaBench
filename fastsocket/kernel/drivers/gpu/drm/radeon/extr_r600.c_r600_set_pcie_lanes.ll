; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_set_pcie_lanes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_set_pcie_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X0 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X1 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X2 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X4 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X8 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X12 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_X16 = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT = common dso_local global i32 0, align 4
@R600_PCIE_LC_UPCONFIGURE_DIS = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_RECONFIG_NOW = common dso_local global i32 0, align 4
@R600_PCIE_LC_RENEGOTIATE_EN = common dso_local global i32 0, align 4
@R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE = common dso_local global i32 0, align 4
@R600_PCIE_LC_RENEGOTIATION_SUPPORT = common dso_local global i32 0, align 4
@R600_PCIE_LC_UPCONFIGURE_SUPPORT = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@R600_TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_set_pcie_lanes(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RADEON_IS_IGP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %117

15:                                               ; preds = %2
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RADEON_IS_PCIE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %117

23:                                               ; preds = %15
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i64 @ASIC_IS_X2(%struct.radeon_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %117

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %43 [
    i32 0, label %30
    i32 1, label %32
    i32 2, label %34
    i32 4, label %36
    i32 8, label %38
    i32 12, label %40
    i32 16, label %42
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X0, align 4
  store i32 %31, i32* %6, align 4
  br label %45

32:                                               ; preds = %28
  %33 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X1, align 4
  store i32 %33, i32* %6, align 4
  br label %45

34:                                               ; preds = %28
  %35 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X2, align 4
  store i32 %35, i32* %6, align 4
  br label %45

36:                                               ; preds = %28
  %37 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X4, align 4
  store i32 %37, i32* %6, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X8, align 4
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %28
  %41 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X12, align 4
  store i32 %41, i32* %6, align 4
  br label %45

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %28, %42
  %44 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_X16, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %40, %38, %36, %34, %32, %30
  %46 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %47 = call i32 @RREG32_PCIE_P(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %117

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @R600_PCIE_LC_UPCONFIGURE_DIS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %117

62:                                               ; preds = %56
  %63 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_MASK, align 4
  %64 = load i32, i32* @RADEON_PCIE_LC_RECONFIG_NOW, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @R600_PCIE_LC_RENEGOTIATE_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @WREG32_PCIE_P(i32 %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @R600_PCIE_LC_RENEGOTIATION_SUPPORT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %62
  %84 = load i32, i32* @R600_PCIE_LC_RENEGOTIATE_EN, align 4
  %85 = load i32, i32* @R600_PCIE_LC_UPCONFIGURE_SUPPORT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %93

89:                                               ; preds = %62
  %90 = load i32, i32* @R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @RADEON_PCIE_LC_RECONFIG_NOW, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @WREG32_PCIE_P(i32 %94, i32 %97)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CHIP_RV770, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* @R700_TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  store i32 %105, i32* %7, align 4
  br label %108

106:                                              ; preds = %93
  %107 = load i32, i32* @R600_TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @RREG32(i32 %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %114, %108
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @RREG32(i32 %115)
  store i32 %116, i32* %5, align 4
  br label %111

117:                                              ; preds = %14, %22, %27, %55, %61, %111
  ret void
}

declare dso_local i64 @ASIC_IS_X2(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_PCIE_P(i32) #1

declare dso_local i32 @WREG32_PCIE_P(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
