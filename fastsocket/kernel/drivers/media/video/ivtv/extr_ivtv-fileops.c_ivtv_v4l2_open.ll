; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32 }
%struct.ivtv_stream = type { %struct.ivtv* }
%struct.video_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize on device %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.ivtv* null, %struct.ivtv** %5, align 8
  store %struct.ivtv_stream* null, %struct.ivtv_stream** %6, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %7, align 8
  %10 = load %struct.video_device*, %struct.video_device** %7, align 8
  %11 = call %struct.ivtv_stream* @video_get_drvdata(%struct.video_device* %10)
  store %struct.ivtv_stream* %11, %struct.ivtv_stream** %6, align 8
  %12 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %13 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %12, i32 0, i32 0
  %14 = load %struct.ivtv*, %struct.ivtv** %13, align 8
  store %struct.ivtv* %14, %struct.ivtv** %5, align 8
  %15 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %19 = call i64 @ivtv_init_on_first_open(%struct.ivtv* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.video_device*, %struct.video_device** %7, align 8
  %23 = call i32 @video_device_node_name(%struct.video_device* %22)
  %24 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = call i32 @ivtv_serialized_open(%struct.ivtv_stream* %31, %struct.file* %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %21
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.ivtv_stream* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ivtv_init_on_first_open(%struct.ivtv*) #1

declare dso_local i32 @IVTV_ERR(i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ivtv_serialized_open(%struct.ivtv_stream*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
