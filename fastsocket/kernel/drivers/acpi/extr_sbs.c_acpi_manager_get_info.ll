; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_manager_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_manager_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_sbs = type { i32, i32 }

@SMBUS_READ_WORD = common dso_local global i32 0, align 4
@ACPI_SBS_MANAGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_sbs*)* @acpi_manager_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_manager_get_info(%struct.acpi_sbs* %0) #0 {
  %2 = alloca %struct.acpi_sbs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.acpi_sbs* %0, %struct.acpi_sbs** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.acpi_sbs*, %struct.acpi_sbs** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SMBUS_READ_WORD, align 4
  %9 = load i32, i32* @ACPI_SBS_MANAGER, align 4
  %10 = call i32 @acpi_smbus_read(i32 %7, i32 %8, i32 %9, i32 4, i32* %4)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 15
  %16 = load %struct.acpi_sbs*, %struct.acpi_sbs** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @acpi_smbus_read(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
