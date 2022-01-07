; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64 }
%struct.omap24xxcam_fh = type { i32, %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.omap24xxcam_fh*, align 8
  %9 = alloca %struct.omap24xxcam_device*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.omap24xxcam_fh*
  store %struct.omap24xxcam_fh* %12, %struct.omap24xxcam_fh** %8, align 8
  %13 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %14 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %13, i32 0, i32 1
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %14, align 8
  store %struct.omap24xxcam_device* %15, %struct.omap24xxcam_device** %9, align 8
  %16 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %9, align 8
  %17 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %9, align 8
  %20 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %9, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %31 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %30, i32 0, i32 0
  %32 = call i32 @omap24xxcam_vbq_free_mmap_buffers(i32* %31)
  %33 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %9, align 8
  %34 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %37 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %36, i32 0, i32 0
  %38 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %39 = call i32 @videobuf_reqbufs(i32* %37, %struct.v4l2_requestbuffers* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %29
  %43 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %29
  br label %61

49:                                               ; preds = %42
  %50 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %51 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %50, i32 0, i32 0
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @omap24xxcam_vbq_alloc_mmap_buffers(i32* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %8, align 8
  %58 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %57, i32 0, i32 0
  %59 = call i32 @omap24xxcam_vbq_free_mmap_buffers(i32* %58)
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %23
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omap24xxcam_vbq_free_mmap_buffers(i32*) #1

declare dso_local i32 @videobuf_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @omap24xxcam_vbq_alloc_mmap_buffers(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
