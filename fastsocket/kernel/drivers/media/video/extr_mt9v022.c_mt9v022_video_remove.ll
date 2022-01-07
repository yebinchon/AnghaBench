; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_video_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_video_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_link = type { i32 (%struct.soc_camera_link*)* }

@.str = private unnamed_addr constant [23 x i8] c"Video removed: %p, %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_camera_device*)* @mt9v022_video_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt9v022_video_remove(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.soc_camera_link*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %4 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %5 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %4)
  store %struct.soc_camera_link* %5, %struct.soc_camera_link** %3, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 1
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %9 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(%struct.TYPE_2__* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.soc_camera_link*, %struct.soc_camera_link** %3, align 8
  %17 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %16, i32 0, i32 0
  %18 = load i32 (%struct.soc_camera_link*)*, i32 (%struct.soc_camera_link*)** %17, align 8
  %19 = icmp ne i32 (%struct.soc_camera_link*)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.soc_camera_link*, %struct.soc_camera_link** %3, align 8
  %22 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %21, i32 0, i32 0
  %23 = load i32 (%struct.soc_camera_link*)*, i32 (%struct.soc_camera_link*)** %22, align 8
  %24 = load %struct.soc_camera_link*, %struct.soc_camera_link** %3, align 8
  %25 = call i32 %23(%struct.soc_camera_link* %24)
  br label %26

26:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
