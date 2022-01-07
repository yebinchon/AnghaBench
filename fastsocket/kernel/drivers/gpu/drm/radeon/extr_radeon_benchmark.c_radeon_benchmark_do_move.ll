; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_do_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_do_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_fence = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown copy method\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, i32, i32, i32)* @radeon_benchmark_do_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_benchmark_do_move(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.radeon_fence*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.radeon_fence* null, %struct.radeon_fence** %15, align 8
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %57, %6
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %33
  ]

25:                                               ; preds = %23
  %26 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %31 = udiv i32 %29, %30
  %32 = call i32 @radeon_copy_dma(%struct.radeon_device* %26, i32 %27, i32 %28, i32 %31, %struct.radeon_fence** %15)
  store i32 %32, i32* %17, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %39 = udiv i32 %37, %38
  %40 = call i32 @radeon_copy_blit(%struct.radeon_device* %34, i32 %35, i32 %36, i32 %39, %struct.radeon_fence** %15)
  store i32 %40, i32* %17, align 4
  br label %45

41:                                               ; preds = %23
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %41, %33, %25
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %66

49:                                               ; preds = %45
  %50 = load %struct.radeon_fence*, %struct.radeon_fence** %15, align 8
  %51 = call i32 @radeon_fence_wait(%struct.radeon_fence* %50, i32 0)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %66

55:                                               ; preds = %49
  %56 = call i32 @radeon_fence_unref(%struct.radeon_fence** %15)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i64, i64* @jiffies, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %62, %63
  %65 = call i32 @jiffies_to_msecs(i64 %64)
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %60, %54, %48
  %67 = load %struct.radeon_fence*, %struct.radeon_fence** %15, align 8
  %68 = icmp ne %struct.radeon_fence* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @radeon_fence_unref(%struct.radeon_fence** %15)
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %17, align 4
  ret i32 %72
}

declare dso_local i32 @radeon_copy_dma(%struct.radeon_device*, i32, i32, i32, %struct.radeon_fence**) #1

declare dso_local i32 @radeon_copy_blit(%struct.radeon_device*, i32, i32, i32, %struct.radeon_fence**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
