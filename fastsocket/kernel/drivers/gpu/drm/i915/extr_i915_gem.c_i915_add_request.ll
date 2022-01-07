; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32 (%struct.intel_ring_buffer*)*, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_i915_gem_request = type { i32, i32, %struct.drm_i915_file_private*, i32, i64, i32, %struct.intel_ring_buffer* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@i915_enable_hangcheck = common dso_local global i64 0, align 8
@DRM_I915_HANGCHECK_JIFFIES = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_add_request(%struct.intel_ring_buffer* %0, %struct.drm_file* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.drm_i915_gem_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_i915_file_private*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %20 = call i32 @intel_ring_flush_all_caches(%struct.intel_ring_buffer* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %146

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.drm_i915_gem_request* @kmalloc(i32 48, i32 %26)
  store %struct.drm_i915_gem_request* %27, %struct.drm_i915_gem_request** %9, align 8
  %28 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %29 = icmp eq %struct.drm_i915_gem_request* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %146

33:                                               ; preds = %25
  %34 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %35 = call i32 @intel_ring_get_tail(%struct.intel_ring_buffer* %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %36, i32 0, i32 0
  %38 = load i32 (%struct.intel_ring_buffer*)*, i32 (%struct.intel_ring_buffer*)** %37, align 8
  %39 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %40 = call i32 %38(%struct.intel_ring_buffer* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %45 = call i32 @kfree(%struct.drm_i915_gem_request* %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %4, align 4
  br label %146

47:                                               ; preds = %33
  %48 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %49 = call i32 @intel_ring_get_seqno(%struct.intel_ring_buffer* %48)
  %50 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %53 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %53, i32 0, i32 6
  store %struct.intel_ring_buffer* %52, %struct.intel_ring_buffer** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* @jiffies, align 8
  %59 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %60 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %61, i32 0, i32 2
  %63 = call i32 @list_empty(i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %64, i32 0, i32 3
  %66 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %66, i32 0, i32 2
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %69, i32 0, i32 2
  store %struct.drm_i915_file_private* null, %struct.drm_i915_file_private** %70, align 8
  %71 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %72 = icmp ne %struct.drm_file* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %47
  %74 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %75 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %74, i32 0, i32 0
  %76 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %75, align 8
  store %struct.drm_i915_file_private* %76, %struct.drm_i915_file_private** %13, align 8
  %77 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %13, align 8
  %78 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %13, align 8
  %82 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %82, i32 0, i32 2
  store %struct.drm_i915_file_private* %81, %struct.drm_i915_file_private** %83, align 8
  %84 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %85 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %84, i32 0, i32 1
  %86 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %13, align 8
  %87 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = call i32 @list_add_tail(i32* %85, i32* %88)
  %90 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %13, align 8
  %91 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %73, %47
  %95 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %96 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %97 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @trace_i915_gem_request_add(%struct.intel_ring_buffer* %95, i32 %98)
  %100 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %101 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %137, label %107

107:                                              ; preds = %94
  %108 = load i64, i64* @i915_enable_hangcheck, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* @jiffies, align 8
  %115 = load i64, i64* @DRM_I915_HANGCHECK_JIFFIES, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @round_jiffies_up(i64 %116)
  %118 = call i32 @mod_timer(i32* %113, i32 %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* @HZ, align 4
  %130 = call i32 @round_jiffies_up_relative(i32 %129)
  %131 = call i32 @queue_delayed_work(i32 %125, i32* %128, i32 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @intel_mark_busy(i32 %134)
  br label %136

136:                                              ; preds = %122, %119
  br label %137

137:                                              ; preds = %136, %94
  %138 = load i32*, i32** %7, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.drm_i915_gem_request*, %struct.drm_i915_gem_request** %9, align 8
  %142 = getelementptr inbounds %struct.drm_i915_gem_request, %struct.drm_i915_gem_request* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %7, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %137
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %43, %30, %23
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @intel_ring_flush_all_caches(%struct.intel_ring_buffer*) #1

declare dso_local %struct.drm_i915_gem_request* @kmalloc(i32, i32) #1

declare dso_local i32 @intel_ring_get_tail(%struct.intel_ring_buffer*) #1

declare dso_local i32 @kfree(%struct.drm_i915_gem_request*) #1

declare dso_local i32 @intel_ring_get_seqno(%struct.intel_ring_buffer*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_i915_gem_request_add(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @round_jiffies_up_relative(i32) #1

declare dso_local i32 @intel_mark_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
