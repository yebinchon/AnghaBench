; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/superhyway/extr_superhyway.c_superhyway_device_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/superhyway/extr_superhyway.c_superhyway_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.superhyway_device = type { i32 }
%struct.superhyway_driver = type { i32 (%struct.superhyway_device.0*, %struct.superhyway_device_id*)*, i32 }
%struct.superhyway_device.0 = type opaque
%struct.superhyway_device_id = type opaque
%struct.superhyway_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @superhyway_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superhyway_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.superhyway_device*, align 8
  %5 = alloca %struct.superhyway_driver*, align 8
  %6 = alloca %struct.superhyway_device_id.1*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.superhyway_device* @to_superhyway_device(%struct.device* %7)
  store %struct.superhyway_device* %8, %struct.superhyway_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.superhyway_driver* @to_superhyway_driver(i32 %11)
  store %struct.superhyway_driver* %12, %struct.superhyway_driver** %5, align 8
  %13 = load %struct.superhyway_driver*, %struct.superhyway_driver** %5, align 8
  %14 = icmp ne %struct.superhyway_driver* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.superhyway_driver*, %struct.superhyway_driver** %5, align 8
  %17 = getelementptr inbounds %struct.superhyway_driver, %struct.superhyway_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.superhyway_device.0*, %struct.superhyway_device_id*)*, i32 (%struct.superhyway_device.0*, %struct.superhyway_device_id*)** %17, align 8
  %19 = icmp ne i32 (%struct.superhyway_device.0*, %struct.superhyway_device_id*)* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.superhyway_driver*, %struct.superhyway_driver** %5, align 8
  %22 = getelementptr inbounds %struct.superhyway_driver, %struct.superhyway_driver* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.superhyway_device*, %struct.superhyway_device** %4, align 8
  %25 = call %struct.superhyway_device_id.1* @superhyway_match_id(i32 %23, %struct.superhyway_device* %24)
  store %struct.superhyway_device_id.1* %25, %struct.superhyway_device_id.1** %6, align 8
  %26 = load %struct.superhyway_device_id.1*, %struct.superhyway_device_id.1** %6, align 8
  %27 = icmp ne %struct.superhyway_device_id.1* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.superhyway_driver*, %struct.superhyway_driver** %5, align 8
  %30 = getelementptr inbounds %struct.superhyway_driver, %struct.superhyway_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.superhyway_device.0*, %struct.superhyway_device_id*)*, i32 (%struct.superhyway_device.0*, %struct.superhyway_device_id*)** %30, align 8
  %32 = load %struct.superhyway_device*, %struct.superhyway_device** %4, align 8
  %33 = bitcast %struct.superhyway_device* %32 to %struct.superhyway_device.0*
  %34 = load %struct.superhyway_device_id.1*, %struct.superhyway_device_id.1** %6, align 8
  %35 = bitcast %struct.superhyway_device_id.1* %34 to %struct.superhyway_device_id*
  %36 = call i32 %31(%struct.superhyway_device.0* %33, %struct.superhyway_device_id* %35)
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %15, %1
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.superhyway_device* @to_superhyway_device(%struct.device*) #1

declare dso_local %struct.superhyway_driver* @to_superhyway_driver(i32) #1

declare dso_local %struct.superhyway_device_id.1* @superhyway_match_id(i32, %struct.superhyway_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
