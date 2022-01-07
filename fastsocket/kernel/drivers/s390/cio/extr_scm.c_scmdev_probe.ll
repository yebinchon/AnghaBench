; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_scm.c_scmdev_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_scm.c_scmdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scm_device = type { i32 }
%struct.scm_driver = type { i32 (%struct.scm_device.0*)* }
%struct.scm_device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @scmdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmdev_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scm_device*, align 8
  %4 = alloca %struct.scm_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.scm_device* @to_scm_dev(%struct.device* %5)
  store %struct.scm_device* %6, %struct.scm_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.scm_driver* @to_scm_drv(i32 %9)
  store %struct.scm_driver* %10, %struct.scm_driver** %4, align 8
  %11 = load %struct.scm_driver*, %struct.scm_driver** %4, align 8
  %12 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.scm_device.0*)*, i32 (%struct.scm_device.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.scm_device.0*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.scm_driver*, %struct.scm_driver** %4, align 8
  %17 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.scm_device.0*)*, i32 (%struct.scm_device.0*)** %17, align 8
  %19 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %20 = bitcast %struct.scm_device* %19 to %struct.scm_device.0*
  %21 = call i32 %18(%struct.scm_device.0* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %21, %15 ], [ %24, %22 ]
  ret i32 %26
}

declare dso_local %struct.scm_device* @to_scm_dev(%struct.device*) #1

declare dso_local %struct.scm_driver* @to_scm_drv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
