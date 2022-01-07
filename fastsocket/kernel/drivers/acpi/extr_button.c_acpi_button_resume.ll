; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_button.c_acpi_button_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_button.c_acpi_button_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_button = type { i64 }

@ACPI_BUTTON_TYPE_LID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_button_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_button_resume(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_button*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = call %struct.acpi_button* @acpi_driver_data(%struct.acpi_device* %5)
  store %struct.acpi_button* %6, %struct.acpi_button** %4, align 8
  %7 = load %struct.acpi_button*, %struct.acpi_button** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_button, %struct.acpi_button* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACPI_BUTTON_TYPE_LID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = call i32 @acpi_lid_send_state(%struct.acpi_device* %13)
  store i32 %14, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local %struct.acpi_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_lid_send_state(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
