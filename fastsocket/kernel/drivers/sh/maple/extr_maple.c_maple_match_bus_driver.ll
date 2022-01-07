; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_match_bus_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_match_bus_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.maple_driver = type { i32 }
%struct.maple_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @maple_match_bus_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maple_match_bus_driver(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.maple_driver*, align 8
  %7 = alloca %struct.maple_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %9 = call %struct.maple_driver* @to_maple_driver(%struct.device_driver* %8)
  store %struct.maple_driver* %9, %struct.maple_driver** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.maple_device* @to_maple_dev(%struct.device* %10)
  store %struct.maple_device* %11, %struct.maple_device** %7, align 8
  %12 = load %struct.maple_device*, %struct.maple_device** %7, align 8
  %13 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.maple_device*, %struct.maple_device** %7, align 8
  %20 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.maple_driver*, %struct.maple_driver** %6, align 8
  %24 = getelementptr inbounds %struct.maple_driver, %struct.maple_driver* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_be32(i32 %25)
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %32

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.maple_driver* @to_maple_driver(%struct.device_driver*) #1

declare dso_local %struct.maple_device* @to_maple_dev(%struct.device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
