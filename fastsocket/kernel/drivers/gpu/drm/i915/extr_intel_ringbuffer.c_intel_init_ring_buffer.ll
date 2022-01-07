; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_init_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_init_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.intel_ring_buffer = type { i32, i64, i32 (%struct.intel_ring_buffer*)*, i32, %struct.drm_i915_gem_object*, i32*, %struct.drm_device*, i32, i32, i32, i32 }
%struct.drm_i915_gem_object = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate ringbuffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to map ringbuffer.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.intel_ring_buffer*)* @intel_init_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_init_ring_buffer(%struct.drm_device* %0, %struct.intel_ring_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.intel_ring_buffer*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.intel_ring_buffer* %1, %struct.intel_ring_buffer** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %13, i32 0, i32 6
  store %struct.drm_device* %12, %struct.drm_device** %14, align 8
  %15 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %15, i32 0, i32 10
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %18, i32 0, i32 9
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 32, %21
  %23 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %29, i32 0, i32 7
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i64 @I915_NEED_GFX_HWS(%struct.drm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %37 = call i32 @init_status_page(%struct.intel_ring_buffer* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %173

42:                                               ; preds = %35
  br label %58

43:                                               ; preds = %2
  %44 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RCS, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %52 = call i32 @init_phys_hws_pga(%struct.intel_ring_buffer* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %173

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %42
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %6, align 8
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = call i32 @HAS_LLC(%struct.drm_device* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.drm_i915_gem_object* @i915_gem_object_create_stolen(%struct.drm_device* %63, i32 %66)
  store %struct.drm_i915_gem_object* %67, %struct.drm_i915_gem_object** %6, align 8
  br label %68

68:                                               ; preds = %62, %58
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %70 = icmp eq %struct.drm_i915_gem_object* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %73 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device* %72, i32 %75)
  store %struct.drm_i915_gem_object* %76, %struct.drm_i915_gem_object** %6, align 8
  br label %77

77:                                               ; preds = %71, %68
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %79 = icmp eq %struct.drm_i915_gem_object* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %169

84:                                               ; preds = %77
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %86 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %87 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %86, i32 0, i32 4
  store %struct.drm_i915_gem_object* %85, %struct.drm_i915_gem_object** %87, align 8
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %88, i32 %89, i32 1, i32 0)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %163

94:                                               ; preds = %84
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %96 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %95, i32 1)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %160

100:                                              ; preds = %94
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %106 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %110 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32* @ioremap_wc(i64 %108, i32 %111)
  %113 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %114 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %113, i32 0, i32 5
  store i32* %112, i32** %114, align 8
  %115 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %116 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %100
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %160

123:                                              ; preds = %100
  %124 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %125 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %124, i32 0, i32 2
  %126 = load i32 (%struct.intel_ring_buffer*)*, i32 (%struct.intel_ring_buffer*)** %125, align 8
  %127 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %128 = call i32 %126(%struct.intel_ring_buffer* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %155

132:                                              ; preds = %123
  %133 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %134 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %137 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %139 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %138, i32 0, i32 6
  %140 = load %struct.drm_device*, %struct.drm_device** %139, align 8
  %141 = call i64 @IS_I830(%struct.drm_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %132
  %144 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %145 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %144, i32 0, i32 6
  %146 = load %struct.drm_device*, %struct.drm_device** %145, align 8
  %147 = call i64 @IS_845G(%struct.drm_device* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143, %132
  %150 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %151 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 128
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %149, %143
  store i32 0, i32* %3, align 4
  br label %173

155:                                              ; preds = %131
  %156 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %157 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @iounmap(i32* %158)
  br label %160

160:                                              ; preds = %155, %119, %99
  %161 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %162 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %161)
  br label %163

163:                                              ; preds = %160, %93
  %164 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %165 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %164, i32 0, i32 0
  %166 = call i32 @drm_gem_object_unreference(i32* %165)
  %167 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %168 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %167, i32 0, i32 4
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %168, align 8
  br label %169

169:                                              ; preds = %163, %80
  %170 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %171 = call i32 @cleanup_status_page(%struct.intel_ring_buffer* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %154, %55, %40
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @I915_NEED_GFX_HWS(%struct.drm_device*) #1

declare dso_local i32 @init_status_page(%struct.intel_ring_buffer*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_phys_hws_pga(%struct.intel_ring_buffer*) #1

declare dso_local i32 @HAS_LLC(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_stolen(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32* @ioremap_wc(i64, i32) #1

declare dso_local i64 @IS_I830(%struct.drm_device*) #1

declare dso_local i64 @IS_845G(%struct.drm_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @cleanup_status_page(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
