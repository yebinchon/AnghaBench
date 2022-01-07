; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_calculate_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_calculate_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_watermark_params = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"FIFO entries required for mode: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"FIFO watermark level: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.intel_watermark_params*, i32, i32, i64)* @intel_calculate_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_calculate_wm(i64 %0, %struct.intel_watermark_params* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_watermark_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.intel_watermark_params* %1, %struct.intel_watermark_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 1000
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %14, %16
  %18 = load i64, i64* %10, align 8
  %19 = mul i64 %17, %18
  %20 = udiv i64 %19, 1000
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %23 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @DIV_ROUND_UP(i64 %21, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %32 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = sub nsw i64 %29, %34
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %40 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %5
  %44 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %45 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %43, %5
  %48 = load i64, i64* %12, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %7, align 8
  %52 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i64, i64* %12, align 8
  ret i64 %55
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
