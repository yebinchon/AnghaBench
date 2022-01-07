; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_driver.c_driver_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_driver.c_driver_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.bus_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }
%struct.driver_private = type { %struct.device_driver* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_driver* @driver_find(i8* %0, %struct.bus_type* %1) #0 {
  %3 = alloca %struct.device_driver*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.driver_private*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.bus_type* %1, %struct.bus_type** %5, align 8
  %8 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %9 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.kobject* @kset_find_obj(i32 %12, i8* %13)
  store %struct.kobject* %14, %struct.kobject** %6, align 8
  %15 = load %struct.kobject*, %struct.kobject** %6, align 8
  %16 = icmp ne %struct.kobject* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.kobject*, %struct.kobject** %6, align 8
  %19 = call %struct.driver_private* @to_driver(%struct.kobject* %18)
  store %struct.driver_private* %19, %struct.driver_private** %7, align 8
  %20 = load %struct.driver_private*, %struct.driver_private** %7, align 8
  %21 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %20, i32 0, i32 0
  %22 = load %struct.device_driver*, %struct.device_driver** %21, align 8
  store %struct.device_driver* %22, %struct.device_driver** %3, align 8
  br label %24

23:                                               ; preds = %2
  store %struct.device_driver* null, %struct.device_driver** %3, align 8
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  ret %struct.device_driver* %25
}

declare dso_local %struct.kobject* @kset_find_obj(i32, i8*) #1

declare dso_local %struct.driver_private* @to_driver(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
