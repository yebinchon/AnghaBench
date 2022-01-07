; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_notifier_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_notifier_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device_handler = type { i32 }
%struct.scsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @scsi_dh_notifier_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_dh_notifier_add(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_device_handler*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.scsi_device_handler*
  store %struct.scsi_device_handler* %9, %struct.scsi_device_handler** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @scsi_is_sdev_device(%struct.device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @get_device(%struct.device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.scsi_device* @to_scsi_device(%struct.device* %20)
  store %struct.scsi_device* %21, %struct.scsi_device** %7, align 8
  %22 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %6, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %24 = call i64 @device_handler_match(%struct.scsi_device_handler* %22, %struct.scsi_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %28 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %6, align 8
  %29 = call i32 @scsi_dh_handler_attach(%struct.scsi_device* %27, %struct.scsi_device_handler* %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @put_device(%struct.device* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %18, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @scsi_is_sdev_device(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i64 @device_handler_match(%struct.scsi_device_handler*, %struct.scsi_device*) #1

declare dso_local i32 @scsi_dh_handler_attach(%struct.scsi_device*, %struct.scsi_device_handler*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
