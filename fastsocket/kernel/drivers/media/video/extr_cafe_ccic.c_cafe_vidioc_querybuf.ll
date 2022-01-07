; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cafe_camera* }
%struct.cafe_camera = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_buffer }
%struct.v4l2_buffer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @cafe_vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.cafe_camera*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.cafe_camera*, %struct.cafe_camera** %10, align 8
  store %struct.cafe_camera* %11, %struct.cafe_camera** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %15 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %21 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %27 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %28 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast %struct.v4l2_buffer* %26 to i8*
  %36 = bitcast %struct.v4l2_buffer* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %25, %24
  %38 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %39 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
