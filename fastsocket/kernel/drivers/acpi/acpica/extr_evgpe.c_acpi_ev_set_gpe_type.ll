; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_set_gpe_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_set_gpe_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32 }

@ev_set_gpe_type = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_GPE_TYPE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_set_gpe_type(%struct.acpi_gpe_event_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_gpe_event_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ev_set_gpe_type, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %11 [
    i32 129, label %10
    i32 130, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %2, %2, %2
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %13 = call i32 @return_ACPI_STATUS(i32 %12)
  br label %14

14:                                               ; preds = %11, %10
  %15 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %16 = call i32 @acpi_ev_disable_gpe(%struct.acpi_gpe_event_info* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @ACPI_GPE_TYPE_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_disable_gpe(%struct.acpi_gpe_event_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
