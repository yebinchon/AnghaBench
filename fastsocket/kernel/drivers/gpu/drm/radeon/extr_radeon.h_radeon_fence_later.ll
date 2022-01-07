; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon.h_radeon_fence_later.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon.h_radeon_fence_later.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_fence* (%struct.radeon_fence*, %struct.radeon_fence*)* @radeon_fence_later to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_fence* @radeon_fence_later(%struct.radeon_fence* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_fence*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_fence* %0, %struct.radeon_fence** %4, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %5, align 8
  %6 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %7 = icmp ne %struct.radeon_fence* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  store %struct.radeon_fence* %9, %struct.radeon_fence** %3, align 8
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %12 = icmp ne %struct.radeon_fence* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  store %struct.radeon_fence* %14, %struct.radeon_fence** %3, align 8
  br label %36

15:                                               ; preds = %10
  %16 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %29 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  store %struct.radeon_fence* %33, %struct.radeon_fence** %3, align 8
  br label %36

34:                                               ; preds = %15
  %35 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  store %struct.radeon_fence* %35, %struct.radeon_fence** %3, align 8
  br label %36

36:                                               ; preds = %34, %32, %13, %8
  %37 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  ret %struct.radeon_fence* %37
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
