; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_platform_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32*)* @soc_camera_platform_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_platform_enum_fmt(%struct.v4l2_subdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.soc_camera_platform_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.soc_camera_platform_info* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.soc_camera_platform_info* %10, %struct.soc_camera_platform_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %8, align 8
  %18 = getelementptr inbounds %struct.soc_camera_platform_info, %struct.soc_camera_platform_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.soc_camera_platform_info* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
