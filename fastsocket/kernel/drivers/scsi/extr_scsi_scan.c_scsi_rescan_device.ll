; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c_scsi_rescan_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c_scsi_rescan_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_driver = type { i32, i32 (%struct.device.0*)* }
%struct.device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_rescan_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.scsi_driver* @to_scsi_driver(i32 %12)
  store %struct.scsi_driver* %13, %struct.scsi_driver** %3, align 8
  %14 = load %struct.scsi_driver*, %struct.scsi_driver** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @try_module_get(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %9
  %20 = load %struct.scsi_driver*, %struct.scsi_driver** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %20, i32 0, i32 1
  %22 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.device.0*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.scsi_driver*, %struct.scsi_driver** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %25, i32 0, i32 1
  %27 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %26, align 8
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = bitcast %struct.device* %28 to %struct.device.0*
  %30 = call i32 %27(%struct.device.0* %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.scsi_driver*, %struct.scsi_driver** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_driver, %struct.scsi_driver* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @module_put(i32 %34)
  br label %36

36:                                               ; preds = %8, %31, %9
  ret void
}

declare dso_local %struct.scsi_driver* @to_scsi_driver(i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
