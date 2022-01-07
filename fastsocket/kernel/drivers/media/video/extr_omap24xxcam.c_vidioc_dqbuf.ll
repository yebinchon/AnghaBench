; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.omap24xxcam_fh = type { %struct.TYPE_3__, %struct.omap24xxcam_device* }
%struct.TYPE_3__ = type { %struct.videobuf_buffer** }
%struct.videobuf_buffer = type { i64 }
%struct.omap24xxcam_device = type { i32, i32, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.omap24xxcam_fh*, align 8
  %8 = alloca %struct.omap24xxcam_device*, align 8
  %9 = alloca %struct.videobuf_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.omap24xxcam_fh*
  store %struct.omap24xxcam_fh* %12, %struct.omap24xxcam_fh** %7, align 8
  %13 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %14 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %13, i32 0, i32 1
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %14, align 8
  store %struct.omap24xxcam_device* %15, %struct.omap24xxcam_device** %8, align 8
  br label %16

16:                                               ; preds = %79, %3
  %17 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %18 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %17, i32 0, i32 0
  %19 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @videobuf_dqbuf(%struct.TYPE_3__* %18, %struct.v4l2_buffer* %19, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %63

29:                                               ; preds = %16
  %30 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %31 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %32, align 8
  %34 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %33, i64 %36
  %38 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %37, align 8
  store %struct.videobuf_buffer* %38, %struct.videobuf_buffer** %9, align 8
  %39 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %40 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %43 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %9, align 8
  %46 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @vidioc_int_g_needs_reset(i32 %44, i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %51 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %29
  %58 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %59 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %58, i32 0, i32 0
  %60 = call i32 @schedule_work(i32* %59)
  br label %62

61:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %70 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %69, i32 0, i32 0
  %71 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %72 = call i32 @videobuf_qbuf(%struct.TYPE_3__* %70, %struct.v4l2_buffer* %71)
  %73 = load %struct.file*, %struct.file** %4, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %16

80:                                               ; preds = %68
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %63
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i32 @videobuf_dqbuf(%struct.TYPE_3__*, %struct.v4l2_buffer*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vidioc_int_g_needs_reset(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @videobuf_qbuf(%struct.TYPE_3__*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
