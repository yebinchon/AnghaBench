; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_queue_vblank_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_queue_vblank_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.drm_device = type { i32, i32 }
%union.drm_wait_vblank = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_pending_vblank_event = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { void (%struct.drm_pending_event*)*, i32, %struct.drm_file*, %struct.TYPE_7__*, i32 }
%struct.drm_pending_event = type opaque
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.timeval = type { i32 }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_12__* null, align 8
@DRM_EVENT_VBLANK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@_DRM_VBLANK_NEXTONMISS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"event on vblank count %d, current %d, crtc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %union.drm_wait_vblank*, %struct.drm_file*)* @drm_queue_vblank_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_queue_vblank_event(%struct.drm_device* %0, i32 %1, %union.drm_wait_vblank* %2, %struct.drm_file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.drm_wait_vblank*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca %struct.drm_pending_vblank_event*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.drm_wait_vblank* %2, %union.drm_wait_vblank** %8, align 8
  store %struct.drm_file* %3, %struct.drm_file** %9, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.drm_pending_vblank_event* @kzalloc(i32 64, i32 %15)
  store %struct.drm_pending_vblank_event* %16, %struct.drm_pending_vblank_event** %10, align 8
  %17 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %18 = icmp eq %struct.drm_pending_vblank_event* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  br label %180

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %25 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %30 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @DRM_EVENT_VBLANK, align 4
  %33 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %34 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %38 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 16, i32* %40, align 4
  %41 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %42 = bitcast %union.drm_wait_vblank* %41 to %struct.TYPE_11__*
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %46 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %49 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %52 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %53, align 8
  %54 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %55 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %56 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store %struct.drm_file* %54, %struct.drm_file** %57, align 8
  %58 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %59 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store void (%struct.drm_pending_event*)* bitcast (i32 (%struct.drm_pending_vblank_event*)* @kfree to void (%struct.drm_pending_event*)*), void (%struct.drm_pending_event*)** %60, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %66 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 16
  br i1 %69, label %70, label %73

70:                                               ; preds = %22
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %173

73:                                               ; preds = %22
  %74 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %75 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 %77, 16
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @drm_vblank_count_and_time(%struct.drm_device* %80, i32 %81, %struct.timeval* %11)
  store i32 %82, i32* %13, align 4
  %83 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %84 = bitcast %union.drm_wait_vblank* %83 to %struct.TYPE_11__*
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @_DRM_VBLANK_NEXTONMISS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %73
  %91 = load i32, i32* %13, align 4
  %92 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %93 = bitcast %union.drm_wait_vblank* %92 to %struct.TYPE_11__*
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub i32 %91, %95
  %97 = icmp ule i32 %96, 8388608
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load i32, i32* %13, align 4
  %100 = add i32 %99, 1
  %101 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %102 = bitcast %union.drm_wait_vblank* %101 to %struct.TYPE_11__*
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %105 = bitcast %union.drm_wait_vblank* %104 to %struct.TYPE_11__*
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %109 = bitcast %union.drm_wait_vblank* %108 to %struct.TYPE_10__*
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %98, %90, %73
  %112 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %113 = bitcast %union.drm_wait_vblank* %112 to %struct.TYPE_11__*
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %124 = bitcast %union.drm_wait_vblank* %123 to %struct.TYPE_11__*
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @trace_drm_vblank_event_queued(i32 %121, i32 %122, i32 %126)
  %128 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %129 = bitcast %union.drm_wait_vblank* %128 to %struct.TYPE_11__*
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %133 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %137 = bitcast %union.drm_wait_vblank* %136 to %struct.TYPE_11__*
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub i32 %135, %139
  %141 = icmp ule i32 %140, 8388608
  br i1 %141, label %142, label %154

142:                                              ; preds = %111
  %143 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @drm_vblank_put(%struct.drm_device* %143, i32 %144)
  %146 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %147 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @send_vblank_event(%struct.drm_device* %146, %struct.drm_pending_vblank_event* %147, i32 %148, %struct.timeval* %11)
  %150 = load i32, i32* %13, align 4
  %151 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %152 = bitcast %union.drm_wait_vblank* %151 to %struct.TYPE_10__*
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  br label %168

154:                                              ; preds = %111
  %155 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %156 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %159 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %158, i32 0, i32 1
  %160 = call i32 @list_add_tail(i32* %157, i32* %159)
  %161 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %162 = bitcast %union.drm_wait_vblank* %161 to %struct.TYPE_11__*
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %166 = bitcast %union.drm_wait_vblank* %165 to %struct.TYPE_10__*
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  br label %168

168:                                              ; preds = %154, %142
  %169 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %170 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %169, i32 0, i32 0
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  store i32 0, i32* %5, align 4
  br label %185

173:                                              ; preds = %70
  %174 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %175 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %174, i32 0, i32 0
  %176 = load i64, i64* %12, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %179 = call i32 @kfree(%struct.drm_pending_vblank_event* %178)
  br label %180

180:                                              ; preds = %173, %19
  %181 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @drm_vblank_put(%struct.drm_device* %181, i32 %182)
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %180, %168
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local %struct.drm_pending_vblank_event* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_vblank_count_and_time(%struct.drm_device*, i32, %struct.timeval*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @trace_drm_vblank_event_queued(i32, i32, i32) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

declare dso_local i32 @send_vblank_event(%struct.drm_device*, %struct.drm_pending_vblank_event*, i32, %struct.timeval*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
