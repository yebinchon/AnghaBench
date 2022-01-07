; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio-driver.c_rio_device_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio-driver.c_rio_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rio_dev = type { %struct.rio_driver* }
%struct.rio_driver = type { i32 (%struct.rio_dev.0*)* }
%struct.rio_dev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rio_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.rio_dev*, align 8
  %4 = alloca %struct.rio_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.rio_dev* @to_rio_dev(%struct.device* %5)
  store %struct.rio_dev* %6, %struct.rio_dev** %3, align 8
  %7 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %7, i32 0, i32 0
  %9 = load %struct.rio_driver*, %struct.rio_driver** %8, align 8
  store %struct.rio_driver* %9, %struct.rio_driver** %4, align 8
  %10 = load %struct.rio_driver*, %struct.rio_driver** %4, align 8
  %11 = icmp ne %struct.rio_driver* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.rio_driver*, %struct.rio_driver** %4, align 8
  %14 = getelementptr inbounds %struct.rio_driver, %struct.rio_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.rio_dev.0*)*, i32 (%struct.rio_dev.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.rio_dev.0*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.rio_driver*, %struct.rio_driver** %4, align 8
  %19 = getelementptr inbounds %struct.rio_driver, %struct.rio_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.rio_dev.0*)*, i32 (%struct.rio_dev.0*)** %19, align 8
  %21 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %22 = bitcast %struct.rio_dev* %21 to %struct.rio_dev.0*
  %23 = call i32 %20(%struct.rio_dev.0* %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %25, i32 0, i32 0
  store %struct.rio_driver* null, %struct.rio_driver** %26, align 8
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %29 = call i32 @rio_dev_put(%struct.rio_dev* %28)
  ret i32 0
}

declare dso_local %struct.rio_dev* @to_rio_dev(%struct.device*) #1

declare dso_local i32 @rio_dev_put(%struct.rio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
