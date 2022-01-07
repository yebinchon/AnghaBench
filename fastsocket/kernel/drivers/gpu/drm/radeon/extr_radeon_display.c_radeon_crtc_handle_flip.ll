; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_handle_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_handle_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i32, i32, %struct.radeon_unpin_work*, %struct.TYPE_11__ }
%struct.radeon_unpin_work = type { i32, i32, i32, i64, %struct.drm_pending_vblank_event*, i32 }
%struct.drm_pending_vblank_event = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.timeval = type { i32, i32 }

@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_crtc_handle_flip(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.radeon_unpin_work*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %16, i64 %18
  %20 = load %struct.radeon_crtc*, %struct.radeon_crtc** %19, align 8
  store %struct.radeon_crtc* %20, %struct.radeon_crtc** %5, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 2
  %29 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %28, align 8
  store %struct.radeon_unpin_work* %29, %struct.radeon_unpin_work** %6, align 8
  %30 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %31 = icmp eq %struct.radeon_unpin_work* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %2
  %33 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @radeon_fence_signaled(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37, %2
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %185

50:                                               ; preds = %37, %32
  %51 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @radeon_page_flip(%struct.radeon_device* %56, i32 %57, i32 %60)
  store i64 %61, i64* %10, align 8
  br label %65

62:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  %63 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %65
  %69 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @radeon_get_crtc_scanoutpos(%struct.TYPE_16__* %72, i32 %73, i32* %11, i32* %12)
  %75 = and i32 %69, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %82, i64 %84
  %86 = load %struct.radeon_crtc*, %struct.radeon_crtc** %85, align 8
  %87 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 99, %90
  %92 = sdiv i32 %91, 100
  %93 = icmp sge i32 %78, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %77
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97, %77
  store i64 0, i64* %10, align 8
  br label %102

102:                                              ; preds = %101, %97, %94, %68, %65
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  br label %185

114:                                              ; preds = %102
  %115 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %116 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %115, i32 0, i32 2
  store %struct.radeon_unpin_work* null, %struct.radeon_unpin_work** %116, align 8
  %117 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %118 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %117, i32 0, i32 4
  %119 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %118, align 8
  %120 = icmp ne %struct.drm_pending_vblank_event* %119, null
  br i1 %120, label %121, label %158

121:                                              ; preds = %114
  %122 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %123 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %122, i32 0, i32 4
  %124 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %123, align 8
  store %struct.drm_pending_vblank_event* %124, %struct.drm_pending_vblank_event** %7, align 8
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @drm_vblank_count_and_time(%struct.TYPE_16__* %127, i32 %128, %struct.timeval* %8)
  %130 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %131 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 8
  %133 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %136 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %141 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %144 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %147 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = call i32 @list_add_tail(i32* %145, i32* %150)
  %152 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %153 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = call i32 @wake_up_interruptible(i32* %156)
  br label %158

158:                                              ; preds = %121, %114
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 0
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %169 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @drm_vblank_put(%struct.TYPE_16__* %167, i32 %170)
  %172 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %173 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %172, i32 0, i32 3
  %174 = call i32 @radeon_fence_unref(i64* %173)
  %175 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %176 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %179 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @radeon_post_page_flip(i32 %177, i32 %180)
  %182 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %6, align 8
  %183 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %182, i32 0, i32 0
  %184 = call i32 @schedule_work(i32* %183)
  br label %185

185:                                              ; preds = %158, %105, %43
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @radeon_fence_signaled(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @radeon_page_flip(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @radeon_get_crtc_scanoutpos(%struct.TYPE_16__*, i32, i32*, i32*) #1

declare dso_local i32 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @drm_vblank_count_and_time(%struct.TYPE_16__*, i32, %struct.timeval*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @drm_vblank_put(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @radeon_fence_unref(i64*) #1

declare dso_local i32 @radeon_post_page_flip(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
