; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.radeon_fence = type { i32, i64, %struct.radeon_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_emit(%struct.radeon_device* %0, %struct.radeon_fence** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_fence**, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_fence** %1, %struct.radeon_fence*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.radeon_fence* @kmalloc(i32 32, i32 %8)
  %10 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  store %struct.radeon_fence* %9, %struct.radeon_fence** %10, align 8
  %11 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %12 = load %struct.radeon_fence*, %struct.radeon_fence** %11, align 8
  %13 = icmp eq %struct.radeon_fence* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %19 = load %struct.radeon_fence*, %struct.radeon_fence** %18, align 8
  %20 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %19, i32 0, i32 3
  %21 = call i32 @kref_init(i32* %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %24 = load %struct.radeon_fence*, %struct.radeon_fence** %23, align 8
  %25 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %24, i32 0, i32 2
  store %struct.radeon_device* %22, %struct.radeon_device** %25, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %40 = load %struct.radeon_fence*, %struct.radeon_fence** %39, align 8
  %41 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %44 = load %struct.radeon_fence*, %struct.radeon_fence** %43, align 8
  %45 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %49 = load %struct.radeon_fence*, %struct.radeon_fence** %48, align 8
  %50 = call i32 @radeon_fence_ring_emit(%struct.radeon_device* %46, i32 %47, %struct.radeon_fence* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %55 = load %struct.radeon_fence*, %struct.radeon_fence** %54, align 8
  %56 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @trace_radeon_fence_emit(i32 %53, i64 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %17, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.radeon_fence* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @radeon_fence_ring_emit(%struct.radeon_device*, i32, %struct.radeon_fence*) #1

declare dso_local i32 @trace_radeon_fence_emit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
