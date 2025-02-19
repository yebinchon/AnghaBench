; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_video_bus = type { %struct.acpi_video_bus*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_video_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_bus_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_video_bus*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.acpi_video_bus* null, %struct.acpi_video_bus** %6, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %10)
  %12 = icmp ne %struct.acpi_video_bus* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %9
  %17 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %18 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %17)
  store %struct.acpi_video_bus* %18, %struct.acpi_video_bus** %6, align 8
  %19 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %19, i32 0, i32 2
  %21 = call i32 @unregister_pm_notifier(i32* %20)
  %22 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %6, align 8
  %23 = call i32 @acpi_video_bus_stop_devices(%struct.acpi_video_bus* %22)
  %24 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %6, align 8
  %25 = call i32 @acpi_video_bus_put_devices(%struct.acpi_video_bus* %24)
  %26 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %27 = call i32 @acpi_video_bus_remove_fs(%struct.acpi_device* %26)
  %28 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %6, align 8
  %29 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @input_unregister_device(i32 %30)
  %32 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %6, align 8
  %33 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %32, i32 0, i32 0
  %34 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %33, align 8
  %35 = call i32 @kfree(%struct.acpi_video_bus* %34)
  %36 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %6, align 8
  %37 = call i32 @kfree(%struct.acpi_video_bus* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @acpi_video_bus_stop_devices(%struct.acpi_video_bus*) #1

declare dso_local i32 @acpi_video_bus_put_devices(%struct.acpi_video_bus*) #1

declare dso_local i32 @acpi_video_bus_remove_fs(%struct.acpi_device*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.acpi_video_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
