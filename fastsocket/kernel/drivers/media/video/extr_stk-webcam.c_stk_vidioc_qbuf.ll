; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, i32 }
%struct.stk_camera = type { i64, i32, i32, %struct.stk_sio_buffer* }
%struct.stk_sio_buffer = type { %struct.v4l2_buffer, i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @stk_vidioc_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.stk_camera*, align 8
  %9 = alloca %struct.stk_sio_buffer*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.stk_camera*
  store %struct.stk_camera* %12, %struct.stk_camera** %8, align 8
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %26 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %80

32:                                               ; preds = %21
  %33 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %34 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %33, i32 0, i32 3
  %35 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %34, align 8
  %36 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %35, i64 %38
  store %struct.stk_sio_buffer* %39, %struct.stk_sio_buffer** %9, align 8
  %40 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %9, align 8
  %41 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %80

48:                                               ; preds = %32
  %49 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %50 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %9, align 8
  %51 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %9, align 8
  %58 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %63 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %62, i32 0, i32 1
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %9, align 8
  %67 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %66, i32 0, i32 1
  %68 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %69 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %68, i32 0, i32 2
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  %71 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %72 = load %struct.stk_sio_buffer*, %struct.stk_sio_buffer** %9, align 8
  %73 = getelementptr inbounds %struct.stk_sio_buffer, %struct.stk_sio_buffer* %72, i32 0, i32 0
  %74 = bitcast %struct.v4l2_buffer* %71 to i8*
  %75 = bitcast %struct.v4l2_buffer* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = load %struct.stk_camera*, %struct.stk_camera** %8, align 8
  %77 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %76, i32 0, i32 1
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %48, %47, %29, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
