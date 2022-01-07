; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_bus_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_bus_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_driver*, i32* }
%struct.device_driver = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque
%struct.scsi_device = type { i32 }

@scsi_dev_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @scsi_bus_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_bus_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, @scsi_dev_type
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_driver*, %struct.device_driver** %14, align 8
  store %struct.device_driver* %15, %struct.device_driver** %4, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call %struct.scsi_device* @to_scsi_device(%struct.device* %16)
  store %struct.scsi_device* %17, %struct.scsi_device** %5, align 8
  %18 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %19 = icmp ne %struct.device_driver* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %22 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %22, align 8
  %24 = icmp ne i32 (%struct.device.0*)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %27 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %26, i32 0, i32 0
  %28 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %27, align 8
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = bitcast %struct.device* %29 to %struct.device.0*
  %31 = call i32 %28(%struct.device.0* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %20, %12
  %33 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %34 = call i32 @scsi_device_resume(%struct.scsi_device* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @scsi_device_resume(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
