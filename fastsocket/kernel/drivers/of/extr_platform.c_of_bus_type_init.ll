; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_bus_type_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_bus_type_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@of_platform_bus_match = common dso_local global i32 0, align 4
@of_platform_device_probe = common dso_local global i32 0, align 4
@of_platform_device_remove = common dso_local global i32 0, align 4
@of_platform_device_suspend = common dso_local global i32 0, align 4
@of_platform_device_resume = common dso_local global i32 0, align 4
@of_platform_device_shutdown = common dso_local global i32 0, align 4
@of_platform_device_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_bus_type_init(%struct.bus_type* %0, i8* %1) #0 {
  %3 = alloca %struct.bus_type*, align 8
  %4 = alloca i8*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %7 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load i32, i32* @of_platform_bus_match, align 4
  %9 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %10 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @of_platform_device_probe, align 4
  %12 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %13 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @of_platform_device_remove, align 4
  %15 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %16 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @of_platform_device_suspend, align 4
  %18 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %19 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @of_platform_device_resume, align 4
  %21 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %22 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @of_platform_device_shutdown, align 4
  %24 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %25 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @of_platform_device_attrs, align 4
  %27 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %28 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %30 = call i32 @bus_register(%struct.bus_type* %29)
  ret i32 %30
}

declare dso_local i32 @bus_register(%struct.bus_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
