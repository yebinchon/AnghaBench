; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_device_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ssb_device = type { i32 }
%struct.ssb_driver = type { i32 (%struct.ssb_device.0*, i32*)* }
%struct.ssb_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ssb_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_device_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.ssb_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.ssb_device* @dev_to_ssb_dev(%struct.device* %6)
  store %struct.ssb_device* %7, %struct.ssb_device** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ssb_driver* @drv_to_ssb_drv(i32 %10)
  store %struct.ssb_driver* %11, %struct.ssb_driver** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %13 = call i32 @ssb_device_get(%struct.ssb_device* %12)
  %14 = load %struct.ssb_driver*, %struct.ssb_driver** %4, align 8
  %15 = icmp ne %struct.ssb_driver* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.ssb_driver*, %struct.ssb_driver** %4, align 8
  %18 = getelementptr inbounds %struct.ssb_driver, %struct.ssb_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.ssb_device.0*, i32*)*, i32 (%struct.ssb_device.0*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.ssb_device.0*, i32*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.ssb_driver*, %struct.ssb_driver** %4, align 8
  %23 = getelementptr inbounds %struct.ssb_driver, %struct.ssb_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.ssb_device.0*, i32*)*, i32 (%struct.ssb_device.0*, i32*)** %23, align 8
  %25 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %26 = bitcast %struct.ssb_device* %25 to %struct.ssb_device.0*
  %27 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %28 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %27, i32 0, i32 0
  %29 = call i32 %24(%struct.ssb_device.0* %26, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %21, %16, %1
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %35 = call i32 @ssb_device_put(%struct.ssb_device* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.ssb_device* @dev_to_ssb_dev(%struct.device*) #1

declare dso_local %struct.ssb_driver* @drv_to_ssb_drv(i32) #1

declare dso_local i32 @ssb_device_get(%struct.ssb_device*) #1

declare dso_local i32 @ssb_device_put(%struct.ssb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
