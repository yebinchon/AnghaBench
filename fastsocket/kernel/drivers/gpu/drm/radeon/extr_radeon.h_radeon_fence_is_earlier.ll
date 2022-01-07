; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon.h_radeon_fence_is_earlier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon.h_radeon_fence_is_earlier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_fence*, %struct.radeon_fence*)* @radeon_fence_is_earlier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fence_is_earlier(%struct.radeon_fence* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_fence* %0, %struct.radeon_fence** %4, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %5, align 8
  %6 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %7 = icmp ne %struct.radeon_fence* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %11 = icmp ne %struct.radeon_fence* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %31

13:                                               ; preds = %9
  %14 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %13, %12, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
