; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-fh.c_v4l2_fh_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-fh.c_v4l2_fh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32*, %struct.video_device*, i32 }
%struct.video_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_fh_init(%struct.v4l2_fh* %0, %struct.video_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.video_device*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.video_device* %1, %struct.video_device** %5, align 8
  %6 = load %struct.video_device*, %struct.video_device** %5, align 8
  %7 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %7, i32 0, i32 1
  store %struct.video_device* %6, %struct.video_device** %8, align 8
  %9 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %13, i32 0, i32 1
  %15 = load %struct.video_device*, %struct.video_device** %14, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %12, i32* %16)
  %18 = load %struct.video_device*, %struct.video_device** %5, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.video_device*, %struct.video_device** %5, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %31 = call i32 @v4l2_event_init(%struct.v4l2_fh* %30)
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %22, %2
  %33 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @v4l2_event_init(%struct.v4l2_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
