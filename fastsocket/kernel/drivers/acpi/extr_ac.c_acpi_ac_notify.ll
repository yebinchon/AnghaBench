; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ac.c_acpi_ac_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ac.c_acpi_ac_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.acpi_ac = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_ac_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ac_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_ac*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.acpi_ac* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.acpi_ac* %7, %struct.acpi_ac** %5, align 8
  %8 = load %struct.acpi_ac*, %struct.acpi_ac** %5, align 8
  %9 = icmp ne %struct.acpi_ac* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %13 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @ACPI_DB_INFO, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ACPI_DEBUG_PRINT(i32 %15)
  br label %17

17:                                               ; preds = %11, %11, %11, %13
  %18 = load %struct.acpi_ac*, %struct.acpi_ac** %5, align 8
  %19 = call i32 @acpi_ac_get_state(%struct.acpi_ac* %18)
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.acpi_ac*, %struct.acpi_ac** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %20, i32 %21, i32 %24)
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  %32 = call i32 @dev_name(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.acpi_ac*, %struct.acpi_ac** %5, align 8
  %35 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @acpi_bus_generate_netlink_event(i32 %29, i32 %32, i32 %33, i32 %36)
  %38 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.acpi_ac*, %struct.acpi_ac** %5, align 8
  %41 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @acpi_notifier_call_chain(%struct.acpi_device* %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44, %10
  ret void
}

declare dso_local %struct.acpi_ac* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ac_get_state(%struct.acpi_ac*) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @acpi_notifier_call_chain(%struct.acpi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
