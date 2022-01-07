; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_setup_status_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_ring_setup_status_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, %struct.TYPE_2__, i32, %struct.drm_device* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_device = type { i32* }

@RENDER_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@BLT_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@BSD_HWS_PGA_GEN7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ring_setup_status_page(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca %struct.intel_ring_buffer*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %2, align 8
  %6 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %6, i32 0, i32 3
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %9, i32 0, i32 3
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i64 @IS_GEN7(%struct.drm_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 130, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @RENDER_HWS_PGA_GEN7, align 4
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @BLT_HWS_PGA_GEN7, align 4
  store i32 %24, i32* %5, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @BSD_HWS_PGA_GEN7, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %17, %25, %23, %21
  br label %45

28:                                               ; preds = %1
  %29 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %29, i32 0, i32 3
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  %32 = call i64 @IS_GEN6(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %36 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @RING_HWS_PGA_GEN6(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %41 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @RING_HWS_PGA(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %2, align 8
  %48 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @I915_WRITE(i32 %46, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @POSTING_READ(i32 %53)
  ret void
}

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i32 @RING_HWS_PGA_GEN6(i32) #1

declare dso_local i32 @RING_HWS_PGA(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
