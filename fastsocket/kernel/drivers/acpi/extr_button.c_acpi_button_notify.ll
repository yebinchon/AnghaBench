; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_button.c_acpi_button_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_button.c_acpi_button_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_button = type { i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ACPI_BUTTON_TYPE_LID = common dso_local global i32 0, align 4
@KEY_SLEEP = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_button_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_button_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_button*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %8)
  store %struct.acpi_button* %9, %struct.acpi_button** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %55 [
    i32 128, label %11
    i32 129, label %12
  ]

11:                                               ; preds = %2
  store i32 129, i32* %4, align 4
  br label %12

12:                                               ; preds = %2, %11
  %13 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %13, i32 0, i32 2
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %6, align 8
  %16 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ACPI_BUTTON_TYPE_LID, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = call i32 @acpi_lid_send_state(%struct.acpi_device* %22)
  br label %47

24:                                               ; preds = %12
  %25 = load i32, i32* @KEY_SLEEP, align 4
  %26 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @test_bit(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @KEY_SLEEP, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @KEY_POWER, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %7, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @input_report_key(%struct.input_dev* %37, i32 %38, i32 1)
  %40 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %41 = call i32 @input_sync(%struct.input_dev* %40)
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @input_report_key(%struct.input_dev* %42, i32 %43, i32 0)
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = call i32 @input_sync(%struct.input_dev* %45)
  br label %47

47:                                               ; preds = %35, %21
  %48 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.acpi_button*, %struct.acpi_button** %5, align 8
  %51 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %48, i32 %49, i32 %53)
  br label %59

55:                                               ; preds = %2
  %56 = load i32, i32* @ACPI_DB_INFO, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ACPI_DEBUG_PRINT(i32 %57)
  br label %59

59:                                               ; preds = %55, %47
  ret void
}

declare dso_local %struct.acpi_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_lid_send_state(%struct.acpi_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
