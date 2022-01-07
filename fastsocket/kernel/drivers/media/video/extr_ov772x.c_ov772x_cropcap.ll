; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_cropcap = type { %struct.TYPE_3__, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@VGA_WIDTH = common dso_local global i32 0, align 4
@VGA_HEIGHT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_cropcap*)* @ov772x_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_cropcap(%struct.v4l2_subdev* %0, %struct.v4l2_cropcap* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_cropcap*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_cropcap* %1, %struct.v4l2_cropcap** %4, align 8
  %5 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @VGA_WIDTH, align 4
  %12 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @VGA_HEIGHT, align 4
  %16 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %19, i32 0, i32 3
  %21 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %21, i32 0, i32 2
  %23 = bitcast %struct.TYPE_4__* %20 to i8*
  %24 = bitcast %struct.TYPE_4__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false)
  %25 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %26 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
