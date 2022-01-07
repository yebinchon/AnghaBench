; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_g_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_g_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dbg_chip_ident = type { i32, i32, i64 }
%struct.cafe_camera = type { i32 }

@V4L2_IDENT_NONE = common dso_local global i32 0, align 4
@V4L2_IDENT_CAFE = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@g_chip_ident = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dbg_chip_ident*)* @cafe_vidioc_g_chip_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_vidioc_g_chip_ident(%struct.file* %0, i8* %1, %struct.v4l2_dbg_chip_ident* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %8 = alloca %struct.cafe_camera*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dbg_chip_ident* %2, %struct.v4l2_dbg_chip_ident** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cafe_camera*
  store %struct.cafe_camera* %10, %struct.cafe_camera** %8, align 8
  %11 = load i32, i32* @V4L2_IDENT_NONE, align 4
  %12 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %16, i32 0, i32 1
  %18 = call i64 @v4l2_chip_match_host(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @V4L2_IDENT_CAFE, align 4
  %22 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %4, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %26 = load i32, i32* @core, align 4
  %27 = load i32, i32* @g_chip_ident, align 4
  %28 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %29 = call i32 @sensor_call(%struct.cafe_camera* %25, i32 %26, i32 %27, %struct.v4l2_dbg_chip_ident* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @v4l2_chip_match_host(i32*) #1

declare dso_local i32 @sensor_call(%struct.cafe_camera*, i32, i32, %struct.v4l2_dbg_chip_ident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
