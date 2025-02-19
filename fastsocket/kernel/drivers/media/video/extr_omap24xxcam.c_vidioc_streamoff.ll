; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.omap24xxcam_fh = type { %struct.videobuf_queue, %struct.omap24xxcam_device* }
%struct.videobuf_queue = type { i32 }
%struct.omap24xxcam_device = type { i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"streaming\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap24xxcam_fh*, align 8
  %8 = alloca %struct.omap24xxcam_device*, align 8
  %9 = alloca %struct.videobuf_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.omap24xxcam_fh*
  store %struct.omap24xxcam_fh* %12, %struct.omap24xxcam_fh** %7, align 8
  %13 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %14 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %13, i32 0, i32 1
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %14, align 8
  store %struct.omap24xxcam_device* %15, %struct.omap24xxcam_device** %8, align 8
  %16 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %17 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %16, i32 0, i32 0
  store %struct.videobuf_queue* %17, %struct.videobuf_queue** %9, align 8
  %18 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %18, i32 0, i32 0
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = call i32 (...) @flush_scheduled_work()
  %22 = load %struct.videobuf_queue*, %struct.videobuf_queue** %9, align 8
  %23 = call i32 @videobuf_streamoff(%struct.videobuf_queue* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %3
  %27 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %28 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %31 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %33 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %32, i32 0, i32 2
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %36 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @sysfs_notify(i32* %38, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %26, %3
  %41 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %42 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %41, i32 0, i32 0
  %43 = call i32 @atomic_dec(i32* %42)
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @videobuf_streamoff(%struct.videobuf_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
