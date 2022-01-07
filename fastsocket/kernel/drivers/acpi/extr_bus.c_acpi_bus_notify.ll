; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_bus_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_bus_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_driver* }
%struct.acpi_driver = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.acpi_device.0*, i32)* }
%struct.acpi_device.0 = type opaque

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Notification %#02x to handle %p\0A\00", align 1
@acpi_bus_notify_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Received unknown/unsupported notification [%08x]\0A\00", align 1
@ACPI_DRIVER_ALL_NOTIFY_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i8*)* @acpi_bus_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_bus_notify(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.acpi_driver*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store %struct.acpi_device* null, %struct.acpi_device** %7, align 8
  %9 = load i32, i32* @ACPI_DB_INFO, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @ACPI_DEBUG_PRINT(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @blocking_notifier_call_chain(i32* @acpi_bus_notify_list, i32 %14, i8* %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %31 [
    i32 135, label %19
    i32 133, label %22
    i32 131, label %25
    i32 130, label %26
    i32 132, label %27
    i32 129, label %28
    i32 134, label %29
    i32 128, label %30
  ]

19:                                               ; preds = %3
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @acpi_bus_check_scope(i64 %20)
  br label %35

22:                                               ; preds = %3
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @acpi_bus_check_device(i64 %23)
  br label %35

25:                                               ; preds = %3
  br label %35

26:                                               ; preds = %3
  br label %35

27:                                               ; preds = %3
  br label %35

28:                                               ; preds = %3
  br label %35

29:                                               ; preds = %3
  br label %35

30:                                               ; preds = %3
  br label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @ACPI_DB_INFO, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ACPI_DEBUG_PRINT(i32 %33)
  br label %35

35:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %22, %19
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @acpi_bus_get_device(i64 %36, %struct.acpi_device** %7)
  %38 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %39 = icmp ne %struct.acpi_device* %38, null
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 0
  %43 = load %struct.acpi_driver*, %struct.acpi_driver** %42, align 8
  store %struct.acpi_driver* %43, %struct.acpi_driver** %8, align 8
  %44 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %45 = icmp ne %struct.acpi_driver* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %48 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.acpi_device.0*, i32)*, i32 (%struct.acpi_device.0*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.acpi_device.0*, i32)* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %54 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ACPI_DRIVER_ALL_NOTIFY_EVENTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  %61 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.acpi_device.0*, i32)*, i32 (%struct.acpi_device.0*, i32)** %62, align 8
  %64 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %65 = bitcast %struct.acpi_device* %64 to %struct.acpi_device.0*
  %66 = load i32, i32* %5, align 4
  %67 = call i32 %63(%struct.acpi_device.0* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %52, %46, %40
  br label %69

69:                                               ; preds = %68, %35
  ret void
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i8*) #1

declare dso_local i32 @acpi_bus_check_scope(i64) #1

declare dso_local i32 @acpi_bus_check_device(i64) #1

declare dso_local i32 @acpi_bus_get_device(i64, %struct.acpi_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
