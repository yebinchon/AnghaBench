; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Querying an invalid fence : %p !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_FENCE_SIGNALED_SEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_wait(%struct.radeon_fence* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_fence* %0, %struct.radeon_fence** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %8 = icmp eq %struct.radeon_fence* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %11 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.radeon_fence* %10)
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @radeon_fence_wait_seq(i32 %17, i32 %20, i32 %23, i32 %24, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %14
  %31 = load i32, i32* @RADEON_FENCE_SIGNALED_SEQ, align 4
  %32 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %28, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @WARN(i32, i8*, %struct.radeon_fence*) #1

declare dso_local i32 @radeon_fence_wait_seq(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
