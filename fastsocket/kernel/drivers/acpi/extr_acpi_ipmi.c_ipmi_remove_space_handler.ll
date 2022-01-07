; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_ipmi_remove_space_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_ipmi_remove_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_device = type { i32, i32 }

@IPMI_FLAGS_HANDLER_INSTALL = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_IPMI = common dso_local global i32 0, align 4
@acpi_ipmi_space_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ipmi_device*)* @ipmi_remove_space_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_remove_space_handler(%struct.acpi_ipmi_device* %0) #0 {
  %2 = alloca %struct.acpi_ipmi_device*, align 8
  store %struct.acpi_ipmi_device* %0, %struct.acpi_ipmi_device** %2, align 8
  %3 = load i32, i32* @IPMI_FLAGS_HANDLER_INSTALL, align 4
  %4 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %4, i32 0, i32 0
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %11 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ACPI_ADR_SPACE_IPMI, align 4
  %14 = call i32 @acpi_remove_address_space_handler(i32 %12, i32 %13, i32* @acpi_ipmi_space_handler)
  %15 = load i32, i32* @IPMI_FLAGS_HANDLER_INSTALL, align 4
  %16 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %16, i32 0, i32 0
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @acpi_remove_address_space_handler(i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
