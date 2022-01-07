; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_any.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_fence = type { i64 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@RADEON_FENCE_SIGNALED_SEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_wait_any(%struct.radeon_device* %0, %struct.radeon_fence** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_fence**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_fence** %1, %struct.radeon_fence*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %54, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %16, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %25, i64 %27
  %29 = load %struct.radeon_fence*, %struct.radeon_fence** %28, align 8
  %30 = icmp ne %struct.radeon_fence* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %54

32:                                               ; preds = %21
  %33 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %33, i64 %35
  %37 = load %struct.radeon_fence*, %struct.radeon_fence** %36, align 8
  %38 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RADEON_FENCE_SIGNALED_SEQ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %66

43:                                               ; preds = %32
  %44 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %44, i64 %46
  %48 = load %struct.radeon_fence*, %struct.radeon_fence** %47, align 8
  %49 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %16, i64 %52
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %43, %31
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %17

57:                                               ; preds = %17
  %58 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @radeon_fence_wait_any_seq(%struct.radeon_device* %58, i64* %16, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %66

65:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %63, %42
  %67 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @radeon_fence_wait_any_seq(%struct.radeon_device*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
