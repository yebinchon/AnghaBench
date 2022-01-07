; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/superhyway/extr_superhyway.c_superhyway_device_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/superhyway/extr_superhyway.c_superhyway_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.superhyway_device = type { i32 }
%struct.superhyway_driver = type { i32 (%struct.superhyway_device.0*)* }
%struct.superhyway_device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @superhyway_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superhyway_device_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.superhyway_device*, align 8
  %5 = alloca %struct.superhyway_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.superhyway_device* @to_superhyway_device(%struct.device* %6)
  store %struct.superhyway_device* %7, %struct.superhyway_device** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.superhyway_driver* @to_superhyway_driver(i32 %10)
  store %struct.superhyway_driver* %11, %struct.superhyway_driver** %5, align 8
  %12 = load %struct.superhyway_driver*, %struct.superhyway_driver** %5, align 8
  %13 = icmp ne %struct.superhyway_driver* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.superhyway_driver*, %struct.superhyway_driver** %5, align 8
  %16 = getelementptr inbounds %struct.superhyway_driver, %struct.superhyway_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.superhyway_device.0*)*, i32 (%struct.superhyway_device.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.superhyway_device.0*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.superhyway_driver*, %struct.superhyway_driver** %5, align 8
  %21 = getelementptr inbounds %struct.superhyway_driver, %struct.superhyway_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.superhyway_device.0*)*, i32 (%struct.superhyway_device.0*)** %21, align 8
  %23 = load %struct.superhyway_device*, %struct.superhyway_device** %4, align 8
  %24 = bitcast %struct.superhyway_device* %23 to %struct.superhyway_device.0*
  %25 = call i32 %22(%struct.superhyway_device.0* %24)
  store i32 0, i32* %2, align 4
  br label %29

26:                                               ; preds = %14, %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.superhyway_device* @to_superhyway_device(%struct.device*) #1

declare dso_local %struct.superhyway_driver* @to_superhyway_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
