; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_hpd_set_polarity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_hpd_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@DC_HPD1_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPDx_INT_POLARITY = common dso_local global i32 0, align 4
@DC_HPD2_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD3_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD4_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD5_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD6_INT_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_hpd_set_polarity(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @evergreen_hpd_sense(%struct.radeon_device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %119 [
    i32 133, label %11
    i32 132, label %29
    i32 131, label %47
    i32 130, label %65
    i32 129, label %83
    i32 128, label %101
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @DC_HPD1_INT_CONTROL, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %11
  %22 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* @DC_HPD1_INT_CONTROL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  br label %120

29:                                               ; preds = %2
  %30 = load i32, i32* @DC_HPD2_INT_CONTROL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @DC_HPD2_INT_CONTROL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WREG32(i32 %44, i32 %45)
  br label %120

47:                                               ; preds = %2
  %48 = load i32, i32* @DC_HPD3_INT_CONTROL, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* @DC_HPD3_INT_CONTROL, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  br label %120

65:                                               ; preds = %2
  %66 = load i32, i32* @DC_HPD4_INT_CONTROL, align 4
  %67 = call i32 @RREG32(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* @DC_HPD4_INT_CONTROL, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @WREG32(i32 %80, i32 %81)
  br label %120

83:                                               ; preds = %2
  %84 = load i32, i32* @DC_HPD5_INT_CONTROL, align 4
  %85 = call i32 @RREG32(i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %97

93:                                               ; preds = %83
  %94 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* @DC_HPD5_INT_CONTROL, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @WREG32(i32 %98, i32 %99)
  br label %120

101:                                              ; preds = %2
  %102 = load i32, i32* @DC_HPD6_INT_CONTROL, align 4
  %103 = call i32 @RREG32(i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %115

111:                                              ; preds = %101
  %112 = load i32, i32* @DC_HPDx_INT_POLARITY, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* @DC_HPD6_INT_CONTROL, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  br label %120

119:                                              ; preds = %2
  br label %120

120:                                              ; preds = %119, %115, %97, %79, %61, %43, %25
  ret void
}

declare dso_local i32 @evergreen_hpd_sense(%struct.radeon_device*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
