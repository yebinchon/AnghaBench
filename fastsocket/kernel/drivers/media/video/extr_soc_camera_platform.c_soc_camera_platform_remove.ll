; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_soc_camera_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.soc_camera_platform_info* }
%struct.soc_camera_platform_info = type { i32 }
%struct.soc_camera_platform_priv = type { i32 }
%struct.soc_camera_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @soc_camera_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.soc_camera_platform_priv*, align 8
  %4 = alloca %struct.soc_camera_platform_info*, align 8
  %5 = alloca %struct.soc_camera_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.soc_camera_platform_priv* @get_priv(%struct.platform_device* %6)
  store %struct.soc_camera_platform_priv* %7, %struct.soc_camera_platform_priv** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %10, align 8
  store %struct.soc_camera_platform_info* %11, %struct.soc_camera_platform_info** %4, align 8
  %12 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %4, align 8
  %13 = getelementptr inbounds %struct.soc_camera_platform_info, %struct.soc_camera_platform_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.soc_camera_device* @to_soc_camera_dev(i32 %14)
  store %struct.soc_camera_device* %15, %struct.soc_camera_device** %5, align 8
  %16 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %3, align 8
  %17 = getelementptr inbounds %struct.soc_camera_platform_priv, %struct.soc_camera_platform_priv* %16, i32 0, i32 0
  %18 = call i32 @v4l2_device_unregister_subdev(i32* %17)
  %19 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %20 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %21, i32* null)
  %23 = load %struct.soc_camera_platform_priv*, %struct.soc_camera_platform_priv** %3, align 8
  %24 = call i32 @kfree(%struct.soc_camera_platform_priv* %23)
  ret i32 0
}

declare dso_local %struct.soc_camera_platform_priv* @get_priv(%struct.platform_device*) #1

declare dso_local %struct.soc_camera_device* @to_soc_camera_dev(i32) #1

declare dso_local i32 @v4l2_device_unregister_subdev(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @kfree(%struct.soc_camera_platform_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
