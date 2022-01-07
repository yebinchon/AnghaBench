; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_destroy_video_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_destroy_video_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_video_device(%struct.video_device** %0) #0 {
  %2 = alloca %struct.video_device**, align 8
  %3 = alloca %struct.video_device*, align 8
  store %struct.video_device** %0, %struct.video_device*** %2, align 8
  %4 = load %struct.video_device**, %struct.video_device*** %2, align 8
  %5 = load %struct.video_device*, %struct.video_device** %4, align 8
  store %struct.video_device* %5, %struct.video_device** %3, align 8
  %6 = load %struct.video_device*, %struct.video_device** %3, align 8
  %7 = icmp eq %struct.video_device* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.video_device*, %struct.video_device** %3, align 8
  %11 = call i64 @video_is_registered(%struct.video_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.video_device*, %struct.video_device** %3, align 8
  %15 = call i32 @video_unregister_device(%struct.video_device* %14)
  br label %19

16:                                               ; preds = %9
  %17 = load %struct.video_device*, %struct.video_device** %3, align 8
  %18 = call i32 @video_device_release(%struct.video_device* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.video_device**, %struct.video_device*** %2, align 8
  store %struct.video_device* null, %struct.video_device** %20, align 8
  br label %21

21:                                               ; preds = %19, %8
  ret void
}

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
