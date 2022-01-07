; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_bus_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_bus_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_driver*, i32* }
%struct.device_driver = type { i32 (%struct.device.0*, i32)* }
%struct.device.0 = type opaque
%struct.scsi_device = type { i32 }

@scsi_dev_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @scsi_bus_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_bus_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_driver*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, @scsi_dev_type
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_driver*, %struct.device_driver** %16, align 8
  store %struct.device_driver* %17, %struct.device_driver** %6, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.scsi_device* @to_scsi_device(%struct.device* %18)
  store %struct.scsi_device* %19, %struct.scsi_device** %7, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %21 = call i32 @scsi_device_quiesce(%struct.scsi_device* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %14
  %27 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %28 = icmp ne %struct.device_driver* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %31 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %30, i32 0, i32 0
  %32 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.device.0*, i32)* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %36 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %35, i32 0, i32 0
  %37 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %36, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = bitcast %struct.device* %38 to %struct.device.0*
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %37(%struct.device.0* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %29, %26
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %24, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @scsi_device_quiesce(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
