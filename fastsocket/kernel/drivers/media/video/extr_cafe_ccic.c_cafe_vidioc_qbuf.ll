; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cafe_camera* }
%struct.cafe_camera = type { i64, i32, i32, i32, %struct.cafe_sio_buffer* }
%struct.cafe_sio_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_buffer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @cafe_vidioc_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_vidioc_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.cafe_camera*, align 8
  %8 = alloca %struct.cafe_sio_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %12, align 8
  store %struct.cafe_camera* %13, %struct.cafe_camera** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %17 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %23 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %74

27:                                               ; preds = %3
  %28 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %29 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %28, i32 0, i32 4
  %30 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %29, align 8
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %30, i64 %33
  store %struct.cafe_sio_buffer* %34, %struct.cafe_sio_buffer** %8, align 8
  %35 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %74

43:                                               ; preds = %27
  %44 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %8, align 8
  %45 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %74

54:                                               ; preds = %43
  %55 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %56 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %8, align 8
  %57 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %62 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %61, i32 0, i32 2
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %8, align 8
  %66 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %65, i32 0, i32 0
  %67 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %68 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %67, i32 0, i32 3
  %69 = call i32 @list_add(i32* %66, i32* %68)
  %70 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %71 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %70, i32 0, i32 2
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %54, %51, %42, %26
  %75 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %76 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
