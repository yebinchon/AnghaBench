; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_platform_device_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_platform_device_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.of_device = type { i32 }
%struct.of_platform_driver = type { i32 (%struct.of_device.0*, i32)* }
%struct.of_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @of_platform_device_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_platform_device_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.of_device*, align 8
  %6 = alloca %struct.of_platform_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.of_device* @to_of_device(%struct.device* %8)
  store %struct.of_device* %9, %struct.of_device** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.of_platform_driver* @to_of_platform_driver(i64 %12)
  store %struct.of_platform_driver* %13, %struct.of_platform_driver** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.of_platform_driver*, %struct.of_platform_driver** %6, align 8
  %20 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.of_device.0*, i32)*, i32 (%struct.of_device.0*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.of_device.0*, i32)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.of_platform_driver*, %struct.of_platform_driver** %6, align 8
  %25 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.of_device.0*, i32)*, i32 (%struct.of_device.0*, i32)** %25, align 8
  %27 = load %struct.of_device*, %struct.of_device** %5, align 8
  %28 = bitcast %struct.of_device* %27 to %struct.of_device.0*
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %26(%struct.of_device.0* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %23, %18, %2
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local %struct.of_device* @to_of_device(%struct.device*) #1

declare dso_local %struct.of_platform_driver* @to_of_platform_driver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
