; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c___pci_device_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c___pci_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { i64 }
%struct.pci_dev = type { %struct.pci_driver* }
%struct.pci_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_driver*, %struct.pci_dev*)* @__pci_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_device_probe(%struct.pci_driver* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.pci_driver*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_driver* %0, %struct.pci_driver** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %10 = icmp ne %struct.pci_driver* %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %13 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call %struct.pci_device_id* @pci_match_device(%struct.pci_driver* %19, %struct.pci_dev* %20)
  store %struct.pci_device_id* %21, %struct.pci_device_id** %5, align 8
  %22 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %23 = icmp ne %struct.pci_device_id* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %28 = call i32 @pci_call_probe(%struct.pci_driver* %25, %struct.pci_dev* %26, %struct.pci_device_id* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  store %struct.pci_driver* %33, %struct.pci_driver** %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %11, %2
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.pci_device_id* @pci_match_device(%struct.pci_driver*, %struct.pci_dev*) #1

declare dso_local i32 @pci_call_probe(%struct.pci_driver*, %struct.pci_dev*, %struct.pci_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
