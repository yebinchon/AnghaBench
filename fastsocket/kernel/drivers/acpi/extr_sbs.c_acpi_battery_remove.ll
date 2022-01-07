; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_battery_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_battery_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_sbs = type { %struct.acpi_battery* }
%struct.acpi_battery = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@acpi_battery_dir = common dso_local global i32 0, align 4
@alarm_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_sbs*, i32)* @acpi_battery_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_battery_remove(%struct.acpi_sbs* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_sbs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_battery*, align 8
  store %struct.acpi_sbs* %0, %struct.acpi_sbs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %6, i32 0, i32 0
  %8 = load %struct.acpi_battery*, %struct.acpi_battery** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %8, i64 %10
  store %struct.acpi_battery* %11, %struct.acpi_battery** %5, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
