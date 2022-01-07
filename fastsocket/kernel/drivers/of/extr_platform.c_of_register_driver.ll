; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_platform.c_of_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_platform_driver = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { %struct.bus_type*, i64, i64 }
%struct.bus_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_register_driver(%struct.of_platform_driver* %0, %struct.bus_type* %1) #0 {
  %3 = alloca %struct.of_platform_driver*, align 8
  %4 = alloca %struct.bus_type*, align 8
  store %struct.of_platform_driver* %0, %struct.of_platform_driver** %3, align 8
  store %struct.bus_type* %1, %struct.bus_type** %4, align 8
  %5 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %6 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %12 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %15 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i64 %13, i64* %16, align 8
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %19 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %25 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %28 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %32 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %33 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.bus_type* %31, %struct.bus_type** %34, align 8
  %35 = load %struct.of_platform_driver*, %struct.of_platform_driver** %3, align 8
  %36 = getelementptr inbounds %struct.of_platform_driver, %struct.of_platform_driver* %35, i32 0, i32 0
  %37 = call i32 @driver_register(%struct.TYPE_2__* %36)
  ret i32 %37
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
