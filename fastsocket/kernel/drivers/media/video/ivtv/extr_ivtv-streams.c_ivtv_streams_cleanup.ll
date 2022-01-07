; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_streams_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_streams_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.video_device* }
%struct.video_device = type { i32 }

@IVTV_MAX_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_streams_cleanup(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.video_device*, %struct.video_device** %18, align 8
  store %struct.video_device* %19, %struct.video_device** %6, align 8
  %20 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %21 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %26, align 8
  %27 = load %struct.video_device*, %struct.video_device** %6, align 8
  %28 = icmp eq %struct.video_device* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  br label %47

30:                                               ; preds = %11
  %31 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = call i32 @ivtv_stream_free(%struct.TYPE_2__* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.video_device*, %struct.video_device** %6, align 8
  %42 = call i32 @video_unregister_device(%struct.video_device* %41)
  br label %46

43:                                               ; preds = %30
  %44 = load %struct.video_device*, %struct.video_device** %6, align 8
  %45 = call i32 @video_device_release(%struct.video_device* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %7

50:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ivtv_stream_free(%struct.TYPE_2__*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
