; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_init_bsd_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_init_bsd_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_ring_buffer* }
%struct.intel_ring_buffer = type { i8*, i64, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32*, i32*, i32, i32 }

@VCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"bsd ring\00", align 1
@ring_write_tail = common dso_local global i32 0, align 4
@GEN6_BSD_RING_BASE = common dso_local global i32 0, align 4
@gen6_bsd_ring_write_tail = common dso_local global i32 0, align 4
@gen6_ring_flush = common dso_local global i32 0, align 4
@gen6_add_request = common dso_local global i32 0, align 4
@gen6_ring_get_seqno = common dso_local global i32 0, align 4
@ring_set_seqno = common dso_local global i8* null, align 8
@GEN6_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@gen6_ring_get_irq = common dso_local global i32 0, align 4
@gen6_ring_put_irq = common dso_local global i32 0, align 4
@gen6_ring_dispatch_execbuffer = common dso_local global i32 0, align 4
@gen6_ring_sync = common dso_local global i32 0, align 4
@MI_SEMAPHORE_SYNC_VR = common dso_local global i32 0, align 4
@MI_SEMAPHORE_SYNC_INVALID = common dso_local global i32 0, align 4
@MI_SEMAPHORE_SYNC_VB = common dso_local global i32 0, align 4
@GEN6_RVSYNC = common dso_local global i32 0, align 4
@GEN6_BVSYNC = common dso_local global i32 0, align 4
@BSD_RING_BASE = common dso_local global i32 0, align 4
@bsd_ring_flush = common dso_local global i32 0, align 4
@i9xx_add_request = common dso_local global i32 0, align 4
@ring_get_seqno = common dso_local global i32 0, align 4
@GT_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@gen5_ring_get_irq = common dso_local global i32 0, align 4
@gen5_ring_put_irq = common dso_local global i32 0, align 4
@I915_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@i9xx_ring_get_irq = common dso_local global i32 0, align 4
@i9xx_ring_put_irq = common dso_local global i32 0, align 4
@i965_dispatch_execbuffer = common dso_local global i32 0, align 4
@init_ring_common = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_init_bsd_ring_buffer(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.intel_ring_buffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %11 = load i64, i64* @VCS, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %10, i64 %11
  store %struct.intel_ring_buffer* %12, %struct.intel_ring_buffer** %4, align 8
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i64, i64* @VCS, align 8
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @ring_write_tail, align 4
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = call i64 @IS_GEN6(%struct.drm_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = call i64 @IS_GEN7(%struct.drm_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %92

28:                                               ; preds = %24, %1
  %29 = load i32, i32* @GEN6_BSD_RING_BASE, align 4
  %30 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call i64 @IS_GEN6(%struct.drm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @gen6_bsd_ring_write_tail, align 4
  %37 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %37, i32 0, i32 15
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32, i32* @gen6_ring_flush, align 4
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @gen6_add_request, align 4
  %44 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @gen6_ring_get_seqno, align 4
  %47 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** @ring_set_seqno, align 8
  %50 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @GEN6_BSD_USER_INTERRUPT, align 4
  %53 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @gen6_ring_get_irq, align 4
  %56 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @gen6_ring_put_irq, align 4
  %59 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @gen6_ring_dispatch_execbuffer, align 4
  %62 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @gen6_ring_sync, align 4
  %65 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @MI_SEMAPHORE_SYNC_VR, align 4
  %68 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %69 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %68, i32 0, i32 13
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @MI_SEMAPHORE_SYNC_INVALID, align 4
  %73 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %73, i32 0, i32 13
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @MI_SEMAPHORE_SYNC_VB, align 4
  %78 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %78, i32 0, i32 13
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @GEN6_RVSYNC, align 4
  %83 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %84 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %83, i32 0, i32 12
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @GEN6_BVSYNC, align 4
  %88 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %89 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %88, i32 0, i32 12
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %87, i32* %91, align 4
  br label %135

92:                                               ; preds = %24
  %93 = load i32, i32* @BSD_RING_BASE, align 4
  %94 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %95 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @bsd_ring_flush, align 4
  %97 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %98 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @i9xx_add_request, align 4
  %100 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %101 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @ring_get_seqno, align 4
  %103 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %104 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** @ring_set_seqno, align 8
  %106 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %107 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %109 = call i64 @IS_GEN5(%struct.drm_device* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %92
  %112 = load i32, i32* @GT_BSD_USER_INTERRUPT, align 4
  %113 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %114 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @gen5_ring_get_irq, align 4
  %116 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %117 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @gen5_ring_put_irq, align 4
  %119 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %120 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  br label %131

121:                                              ; preds = %92
  %122 = load i32, i32* @I915_BSD_USER_INTERRUPT, align 4
  %123 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %124 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @i9xx_ring_get_irq, align 4
  %126 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %127 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @i9xx_ring_put_irq, align 4
  %129 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %130 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %121, %111
  %132 = load i32, i32* @i965_dispatch_execbuffer, align 4
  %133 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %134 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %39
  %136 = load i32, i32* @init_ring_common, align 4
  %137 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %138 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %140 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %141 = call i32 @intel_init_ring_buffer(%struct.drm_device* %139, %struct.intel_ring_buffer* %140)
  ret i32 %141
}

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i32 @intel_init_ring_buffer(%struct.drm_device*, %struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
