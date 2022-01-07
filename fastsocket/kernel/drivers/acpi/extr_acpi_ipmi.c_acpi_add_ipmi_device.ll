; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_add_ipmi_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_add_ipmi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_ipmi_device = type { i32, i32, i32 }

@driver_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ipmi_device*)* @acpi_add_ipmi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_add_ipmi_device(%struct.acpi_ipmi_device* %0) #0 {
  %2 = alloca %struct.acpi_ipmi_device*, align 8
  store %struct.acpi_ipmi_device* %0, %struct.acpi_ipmi_device** %2, align 8
  %3 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %3, i32 0, i32 0
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %6, i32 0, i32 2
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %13 = call i32 @ipmi_install_space_handler(%struct.acpi_ipmi_device* %12)
  %14 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %14, i32 0, i32 0
  %16 = call i32 @list_add_tail(i32* %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0))
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ipmi_install_space_handler(%struct.acpi_ipmi_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
