; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_platform_device_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_platform_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.of_device = type { i32 }
%struct.of_platform_driver = type { i32 (%struct.of_device.0*)* }
%struct.of_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @of_platform_device_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_platform_device_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.of_device*, align 8
  %4 = alloca %struct.of_platform_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.of_device* @to_of_device(%struct.device* %6)
  store %struct.of_device* %7, %struct.of_device** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.of_platform_driver* @to_of_platform_driver(i64 %10)
  store %struct.of_platform_driver* %11, %struct.of_platform_driver** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.of_platform_driver*, %struct.of_platform_driver** %4, align 8
  %18 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.of_device.0*)*, i32 (%struct.of_device.0*)** %18, align 8
  %20 = icmp ne i32 (%struct.of_device.0*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.of_platform_driver*, %struct.of_platform_driver** %4, align 8
  %23 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.of_device.0*)*, i32 (%struct.of_device.0*)** %23, align 8
  %25 = load %struct.of_device*, %struct.of_device** %3, align 8
  %26 = bitcast %struct.of_device* %25 to %struct.of_device.0*
  %27 = call i32 %24(%struct.of_device.0* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %16, %1
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.of_device* @to_of_device(%struct.device*) #1

declare dso_local %struct.of_platform_driver* @to_of_platform_driver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
