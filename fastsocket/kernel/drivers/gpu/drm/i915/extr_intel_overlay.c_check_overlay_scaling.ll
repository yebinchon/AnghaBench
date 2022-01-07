; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_check_overlay_scaling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_check_overlay_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.put_image_params = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.put_image_params*)* @check_overlay_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_overlay_scaling(%struct.put_image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.put_image_params*, align 8
  %4 = alloca i32, align 4
  store %struct.put_image_params* %0, %struct.put_image_params** %3, align 8
  %5 = load %struct.put_image_params*, %struct.put_image_params** %3, align 8
  %6 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 16
  %9 = load %struct.put_image_params*, %struct.put_image_params** %3, align 8
  %10 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %8, %11
  %13 = ashr i32 %12, 16
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 7
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.put_image_params*, %struct.put_image_params** %3, align 8
  %21 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = load %struct.put_image_params*, %struct.put_image_params** %3, align 8
  %25 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 7
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
