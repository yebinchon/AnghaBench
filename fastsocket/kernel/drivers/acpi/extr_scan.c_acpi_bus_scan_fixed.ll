; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_scan_fixed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_scan_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_bus_ops = type { i32, i32 }

@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_FADT_POWER_BUTTON = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_POWER_BUTTON = common dso_local global i32 0, align 4
@ACPI_STA_DEFAULT = common dso_local global i32 0, align 4
@ACPI_FADT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_SLEEP_BUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acpi_bus_scan_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_scan_fixed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.acpi_bus_ops, align 4
  store i32 0, i32* %1, align 4
  store %struct.acpi_device* null, %struct.acpi_device** %2, align 8
  %4 = call i32 @memset(%struct.acpi_bus_ops* %3, i32 0, i32 8)
  %5 = getelementptr inbounds %struct.acpi_bus_ops, %struct.acpi_bus_ops* %3, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.acpi_bus_ops, %struct.acpi_bus_ops* %3, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %8 = load i32, i32* @ACPI_FADT_POWER_BUTTON, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @ACPI_BUS_TYPE_POWER_BUTTON, align 4
  %13 = load i32, i32* @ACPI_STA_DEFAULT, align 4
  %14 = call i32 @acpi_add_single_object(%struct.acpi_device** %2, i32* null, i32 %12, i32 %13, %struct.acpi_bus_ops* %3)
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %17 = load i32, i32* @ACPI_FADT_SLEEP_BUTTON, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @ACPI_BUS_TYPE_SLEEP_BUTTON, align 4
  %22 = load i32, i32* @ACPI_STA_DEFAULT, align 4
  %23 = call i32 @acpi_add_single_object(%struct.acpi_device** %2, i32* null, i32 %21, i32 %22, %struct.acpi_bus_ops* %3)
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @memset(%struct.acpi_bus_ops*, i32, i32) #1

declare dso_local i32 @acpi_add_single_object(%struct.acpi_device**, i32*, i32, i32, %struct.acpi_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
