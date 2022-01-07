; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MT9M111_MIN_DARK_COLS = common dso_local global i32 0, align 4
@MT9M111_MIN_DARK_ROWS = common dso_local global i32 0, align 4
@MT9M111_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M111_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_cropcap*)* @mt9m111_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_cropcap(%struct.v4l2_subdev* %0, %struct.v4l2_cropcap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_cropcap*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_cropcap* %1, %struct.v4l2_cropcap** %5, align 8
  %6 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load i32, i32* @MT9M111_MIN_DARK_COLS, align 4
  %16 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @MT9M111_MIN_DARK_ROWS, align 4
  %20 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @MT9M111_MAX_WIDTH, align 4
  %24 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @MT9M111_MAX_HEIGHT, align 4
  %28 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %31, i32 0, i32 3
  %33 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %33, i32 0, i32 2
  %35 = bitcast %struct.TYPE_4__* %32 to i8*
  %36 = bitcast %struct.TYPE_4__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %14, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
