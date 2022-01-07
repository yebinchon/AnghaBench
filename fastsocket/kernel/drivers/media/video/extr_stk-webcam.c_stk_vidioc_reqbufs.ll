; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i32 }
%struct.stk_camera = type { i32, %struct.file* }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @stk_vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.stk_camera*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.stk_camera*
  store %struct.stk_camera* %10, %struct.stk_camera** %8, align 8
  %11 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %12 = icmp eq %struct.stk_camera* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %74

16:                                               ; preds = %3
  %17 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %74

25:                                               ; preds = %16
  %26 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %27 = call i64 @is_streaming(%struct.stk_camera* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %31 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %30, i32 0, i32 1
  %32 = load %struct.file*, %struct.file** %31, align 8
  %33 = icmp ne %struct.file* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %36 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %35, i32 0, i32 1
  %37 = load %struct.file*, %struct.file** %36, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = icmp ne %struct.file* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %25
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %34, %29
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %46 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %45, i32 0, i32 1
  store %struct.file* %44, %struct.file** %46, align 8
  %47 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %52, i32 0, i32 1
  store i32 3, i32* %53, align 8
  br label %63

54:                                               ; preds = %43
  %55 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %60, i32 0, i32 1
  store i32 5, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %65 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @stk_allocate_buffers(%struct.stk_camera* %64, i32 %67)
  %69 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %70 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %63, %40, %22, %13
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @is_streaming(%struct.stk_camera*) #1

declare dso_local i32 @stk_allocate_buffers(%struct.stk_camera*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
