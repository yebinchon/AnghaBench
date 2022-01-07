; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_button.c_acpi_lid_send_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_button.c_acpi_lid_send_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_button = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_LID\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SW_LID = common dso_local global i32 0, align 4
@acpi_lid_notifier = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_lid_send_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_lid_send_state(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_button*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %8)
  store %struct.acpi_button* %9, %struct.acpi_button** %4, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @acpi_evaluate_integer(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SW_LID, align 4
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @input_report_switch(i32 %23, i32 %24, i32 %28)
  %30 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @input_sync(i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = call i32 @blocking_notifier_call_chain(i32* @acpi_lid_notifier, i64 %34, %struct.acpi_device* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @NOTIFY_DONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %20
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %43 = call i32 @blocking_notifier_call_chain(i32* @acpi_lid_notifier, i64 %41, %struct.acpi_device* %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %20
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NOTIFY_DONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NOTIFY_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.acpi_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i64, %struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
