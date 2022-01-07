; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_send_vblank_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_send_vblank_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_send_vblank_event(%struct.drm_device* %0, i32 %1, %struct.drm_pending_vblank_event* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_pending_vblank_event*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @drm_vblank_count_and_time(%struct.drm_device* %13, i32 %14, %struct.timeval* %7)
  store i32 %15, i32* %8, align 4
  br label %21

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %17 = call i32 (...) @get_drm_timestamp()
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.timeval* %7 to i8*
  %20 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %24 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @send_vblank_event(%struct.drm_device* %25, %struct.drm_pending_vblank_event* %26, i32 %27, %struct.timeval* %7)
  ret void
}

declare dso_local i32 @drm_vblank_count_and_time(%struct.drm_device*, i32, %struct.timeval*) #1

declare dso_local i32 @get_drm_timestamp(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @send_vblank_event(%struct.drm_device*, %struct.drm_pending_vblank_event*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
