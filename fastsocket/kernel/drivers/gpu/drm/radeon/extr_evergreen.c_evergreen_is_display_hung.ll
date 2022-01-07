; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_is_display_hung.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_is_display_hung.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@EVERGREEN_CRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@EVERGREEN_CRTC_MASTER_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_STATUS_HV_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_is_display_hung(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %17 = load i64*, i64** @crtc_offsets, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %16, %20
  %22 = call i32 @RREG32(i64 %21)
  %23 = load i32, i32* @EVERGREEN_CRTC_MASTER_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %15
  %27 = load i64, i64* @EVERGREEN_CRTC_STATUS_HV_COUNT, align 8
  %28 = load i64*, i64** @crtc_offsets, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = call i32 @RREG32(i64 %32)
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 %35
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %26, %15
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %9

47:                                               ; preds = %9
  store i64 0, i64* %7, align 8
  br label %48

48:                                               ; preds = %99, %47
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %49, 10
  br i1 %50, label %51, label %102

51:                                               ; preds = %48
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %90, %51
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %52
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = sext i32 %62 to i64
  %64 = and i64 %59, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %58
  %67 = load i64, i64* @EVERGREEN_CRTC_STATUS_HV_COUNT, align 8
  %68 = load i64*, i64** @crtc_offsets, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = call i32 @RREG32(i64 %72)
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %66
  %81 = load i64, i64* %6, align 8
  %82 = trunc i64 %81 to i32
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %4, align 8
  %87 = and i64 %86, %85
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %80, %66
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %52

93:                                               ; preds = %52
  %94 = load i64, i64* %4, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %103

97:                                               ; preds = %93
  %98 = call i32 @udelay(i32 100)
  br label %99

99:                                               ; preds = %97
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %7, align 8
  br label %48

102:                                              ; preds = %48
  store i32 1, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %96
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
