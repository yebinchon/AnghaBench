; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cx18 = type { i64 }
%struct.cx18_open_id = type { %struct.cx18* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @cx18_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.cx18*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cx18_open_id*
  %11 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %10, i32 0, i32 0
  %12 = load %struct.cx18*, %struct.cx18** %11, align 8
  store %struct.cx18* %12, %struct.cx18** %8, align 8
  %13 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  %22 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 720, i32* %30, align 8
  %31 = load %struct.cx18*, %struct.cx18** %8, align 8
  %32 = getelementptr inbounds %struct.cx18, %struct.cx18* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 576, i32 480
  %37 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.cx18*, %struct.cx18** %8, align 8
  %41 = getelementptr inbounds %struct.cx18, %struct.cx18* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 59, i32 10
  %46 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.cx18*, %struct.cx18** %8, align 8
  %50 = getelementptr inbounds %struct.cx18, %struct.cx18* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 54, i32 11
  %55 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %58, i32 0, i32 2
  %60 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %60, i32 0, i32 1
  %62 = bitcast %struct.TYPE_4__* %59 to i8*
  %63 = bitcast %struct.TYPE_4__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %21, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
