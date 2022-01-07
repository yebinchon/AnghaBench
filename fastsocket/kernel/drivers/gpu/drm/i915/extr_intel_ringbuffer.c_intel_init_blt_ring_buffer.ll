; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_init_blt_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_init_blt_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_ring_buffer* }
%struct.intel_ring_buffer = type { i8*, i64, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"blitter ring\00", align 1
@BLT_RING_BASE = common dso_local global i32 0, align 4
@ring_write_tail = common dso_local global i32 0, align 4
@blt_ring_flush = common dso_local global i32 0, align 4
@gen6_add_request = common dso_local global i32 0, align 4
@gen6_ring_get_seqno = common dso_local global i32 0, align 4
@ring_set_seqno = common dso_local global i32 0, align 4
@GEN6_BLITTER_USER_INTERRUPT = common dso_local global i32 0, align 4
@gen6_ring_get_irq = common dso_local global i32 0, align 4
@gen6_ring_put_irq = common dso_local global i32 0, align 4
@gen6_ring_dispatch_execbuffer = common dso_local global i32 0, align 4
@gen6_ring_sync = common dso_local global i32 0, align 4
@MI_SEMAPHORE_SYNC_BR = common dso_local global i32 0, align 4
@MI_SEMAPHORE_SYNC_BV = common dso_local global i32 0, align 4
@MI_SEMAPHORE_SYNC_INVALID = common dso_local global i32 0, align 4
@GEN6_RBSYNC = common dso_local global i32 0, align 4
@GEN6_VBSYNC = common dso_local global i32 0, align 4
@init_ring_common = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_init_blt_ring_buffer(%struct.drm_device* %0) #0 {
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
  %11 = load i64, i64* @BCS, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %10, i64 %11
  store %struct.intel_ring_buffer* %12, %struct.intel_ring_buffer** %4, align 8
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i64, i64* @BCS, align 8
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @BLT_RING_BASE, align 4
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @ring_write_tail, align 4
  %22 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %22, i32 0, i32 14
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @blt_ring_flush, align 4
  %25 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @gen6_add_request, align 4
  %28 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %28, i32 0, i32 12
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @gen6_ring_get_seqno, align 4
  %31 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @ring_set_seqno, align 4
  %34 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @GEN6_BLITTER_USER_INTERRUPT, align 4
  %37 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @gen6_ring_get_irq, align 4
  %40 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @gen6_ring_put_irq, align 4
  %43 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @gen6_ring_dispatch_execbuffer, align 4
  %46 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @gen6_ring_sync, align 4
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @MI_SEMAPHORE_SYNC_BR, align 4
  %52 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @MI_SEMAPHORE_SYNC_BV, align 4
  %57 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @MI_SEMAPHORE_SYNC_INVALID, align 4
  %62 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @GEN6_RBSYNC, align 4
  %67 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @GEN6_VBSYNC, align 4
  %72 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %73 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @init_ring_common, align 4
  %77 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %78 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %80 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %81 = call i32 @intel_init_ring_buffer(%struct.drm_device* %79, %struct.intel_ring_buffer* %80)
  ret i32 %81
}

declare dso_local i32 @intel_init_ring_buffer(%struct.drm_device*, %struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
