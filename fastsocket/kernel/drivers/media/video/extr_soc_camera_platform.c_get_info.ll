; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera_platform.c_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_platform_info = type { i32 }
%struct.soc_camera_device = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.soc_camera_platform_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.soc_camera_platform_info* (%struct.soc_camera_device*)* @get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.soc_camera_platform_info* @get_info(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %4 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %5 = call i32 @to_soc_camera_control(%struct.soc_camera_device* %4)
  %6 = call %struct.platform_device* @to_platform_device(i32 %5)
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.soc_camera_platform_info*, %struct.soc_camera_platform_info** %9, align 8
  ret %struct.soc_camera_platform_info* %10
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @to_soc_camera_control(%struct.soc_camera_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
