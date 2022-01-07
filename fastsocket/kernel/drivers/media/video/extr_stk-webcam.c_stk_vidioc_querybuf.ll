; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.stk_camera = type { i64, %struct.stk_sio_buffer* }
%struct.stk_sio_buffer = type { %struct.v4l2_buffer }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @stk_vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.stk_camera*, align 8
  %9 = alloca %struct.stk_sio_buffer*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.stk_camera*
  store %struct.stk_camera* %11, %struct.stk_camera** %8, align 8
  %12 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %16 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %24 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %23, i32 0, i32 1
  %25 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %24, align 8
  %26 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %25, i64 %28
  store %struct.stk_sio_buffer* %29, %struct.stk_sio_buffer** %9, align 8
  %30 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %31 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %9, align 8
  %32 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %31, i32 0, i32 0
  %33 = bitcast %struct.v4l2_buffer* %30 to i8*
  %34 = bitcast %struct.v4l2_buffer* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
