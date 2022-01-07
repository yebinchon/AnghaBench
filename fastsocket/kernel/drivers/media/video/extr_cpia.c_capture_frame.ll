; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_capture_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_capture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.video_mmap = type { i64 }

@FRAME_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*, %struct.video_mmap*)* @capture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_frame(%struct.cam_data* %0, %struct.video_mmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_data*, align 8
  %5 = alloca %struct.video_mmap*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_data* %0, %struct.cam_data** %4, align 8
  store %struct.video_mmap* %1, %struct.video_mmap** %5, align 8
  %7 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %8 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %13 = call i32 @allocate_frame_buf(%struct.cam_data* %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.video_mmap*, %struct.video_mmap** %5, align 8
  %20 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %23 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @FRAME_READY, align 4
  %25 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %26 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %29 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %24, i32* %32, align 4
  %33 = load %struct.cam_data*, %struct.cam_data** %4, align 8
  %34 = call i32 @fetch_frame(%struct.cam_data* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %18, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @allocate_frame_buf(%struct.cam_data*) #1

declare dso_local i32 @fetch_frame(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
