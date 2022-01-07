; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_signaled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_signaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i64, i32, i32 }

@RADEON_FENCE_SIGNALED_SEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_signaled(%struct.radeon_fence* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_fence* %0, %struct.radeon_fence** %3, align 8
  %4 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %5 = icmp ne %struct.radeon_fence* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

7:                                                ; preds = %1
  %8 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RADEON_FENCE_SIGNALED_SEQ, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %31

14:                                               ; preds = %7
  %15 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @radeon_fence_seq_signaled(i32 %17, i64 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i64, i64* @RADEON_FENCE_SIGNALED_SEQ, align 8
  %28 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26, %13, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @radeon_fence_seq_signaled(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
