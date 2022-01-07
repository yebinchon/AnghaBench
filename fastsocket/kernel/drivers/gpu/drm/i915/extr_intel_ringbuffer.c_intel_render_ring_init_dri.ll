; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_render_ring_init_dri.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_intel_render_ring_init_dri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intel_ring_buffer* }
%struct.intel_ring_buffer = type { i8*, i64, i32, i32, i32*, %struct.drm_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"render ring\00", align 1
@RENDER_RING_BASE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@i9xx_add_request = common dso_local global i32 0, align 4
@gen2_render_ring_flush = common dso_local global i32 0, align 4
@gen4_render_ring_flush = common dso_local global i32 0, align 4
@ring_get_seqno = common dso_local global i32 0, align 4
@ring_set_seqno = common dso_local global i32 0, align 4
@i8xx_ring_get_irq = common dso_local global i32 0, align 4
@i8xx_ring_put_irq = common dso_local global i32 0, align 4
@i9xx_ring_get_irq = common dso_local global i32 0, align 4
@i9xx_ring_put_irq = common dso_local global i32 0, align 4
@I915_USER_INTERRUPT = common dso_local global i32 0, align 4
@ring_write_tail = common dso_local global i32 0, align 4
@i965_dispatch_execbuffer = common dso_local global i32 0, align 4
@i830_dispatch_execbuffer = common dso_local global i32 0, align 4
@i915_dispatch_execbuffer = common dso_local global i32 0, align 4
@init_render_ring = common dso_local global i32 0, align 4
@render_ring_cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"can not ioremap virtual address for ring buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_render_ring_init_dri(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.intel_ring_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %15, align 8
  %17 = load i64, i64* @RCS, align 8
  %18 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %16, i64 %17
  store %struct.intel_ring_buffer* %18, %struct.intel_ring_buffer** %9, align 8
  %19 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %20 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i64, i64* @RCS, align 8
  %22 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %23 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @RENDER_RING_BASE, align 4
  %25 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %26 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %25, i32 0, i32 19
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 6
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %176

35:                                               ; preds = %3
  %36 = load i32, i32* @i9xx_add_request, align 4
  %37 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %38 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %37, i32 0, i32 18
  store i32 %36, i32* %38, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @gen2_render_ring_flush, align 4
  %46 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %47 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %46, i32 0, i32 17
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %35
  %49 = load i32, i32* @gen4_render_ring_flush, align 4
  %50 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %51 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %50, i32 0, i32 17
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @ring_get_seqno, align 4
  %54 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %55 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %54, i32 0, i32 16
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @ring_set_seqno, align 4
  %57 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %58 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %57, i32 0, i32 15
  store i32 %56, i32* %58, align 4
  %59 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %60 = call i64 @IS_GEN2(%struct.drm_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load i32, i32* @i8xx_ring_get_irq, align 4
  %64 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %65 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @i8xx_ring_put_irq, align 4
  %67 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %68 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %67, i32 0, i32 13
  store i32 %66, i32* %68, align 4
  br label %76

69:                                               ; preds = %52
  %70 = load i32, i32* @i9xx_ring_get_irq, align 4
  %71 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %72 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @i9xx_ring_put_irq, align 4
  %74 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %75 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %62
  %77 = load i32, i32* @I915_USER_INTERRUPT, align 4
  %78 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %79 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @ring_write_tail, align 4
  %81 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %82 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 4
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 4
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* @i965_dispatch_execbuffer, align 4
  %90 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %91 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  br label %109

92:                                               ; preds = %76
  %93 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %94 = call i64 @IS_I830(%struct.drm_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %98 = call i64 @IS_845G(%struct.drm_device* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %92
  %101 = load i32, i32* @i830_dispatch_execbuffer, align 4
  %102 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %103 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 8
  br label %108

104:                                              ; preds = %96
  %105 = load i32, i32* @i915_dispatch_execbuffer, align 4
  %106 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %107 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* @init_render_ring, align 4
  %111 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %112 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @render_ring_cleanup, align 4
  %114 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %115 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %117 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %118 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %117, i32 0, i32 5
  store %struct.drm_device* %116, %struct.drm_device** %118, align 8
  %119 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %120 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %119, i32 0, i32 7
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %123 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %122, i32 0, i32 6
  %124 = call i32 @INIT_LIST_HEAD(i32* %123)
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %127 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %129 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %132 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %134 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %133, i32 0, i32 5
  %135 = load %struct.drm_device*, %struct.drm_device** %134, align 8
  %136 = call i64 @IS_I830(%struct.drm_device* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %109
  %139 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %140 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %139, i32 0, i32 5
  %141 = load %struct.drm_device*, %struct.drm_device** %140, align 8
  %142 = call i64 @IS_845G(%struct.drm_device* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138, %109
  %145 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %146 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 128
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %138
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32* @ioremap_wc(i32 %150, i32 %151)
  %153 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %154 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %153, i32 0, i32 4
  store i32* %152, i32** %154, align 8
  %155 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %156 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %176

163:                                              ; preds = %149
  %164 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %165 = call i32 @I915_NEED_GFX_HWS(%struct.drm_device* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  %169 = call i32 @init_phys_hws_pga(%struct.intel_ring_buffer* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %4, align 4
  br label %176

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %163
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %172, %159, %32
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i64 @IS_I830(%struct.drm_device*) #1

declare dso_local i64 @IS_845G(%struct.drm_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @ioremap_wc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_NEED_GFX_HWS(%struct.drm_device*) #1

declare dso_local i32 @init_phys_hws_pga(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
