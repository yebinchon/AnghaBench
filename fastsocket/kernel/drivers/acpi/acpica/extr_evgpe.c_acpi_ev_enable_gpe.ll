; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_enable_gpe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_enable_gpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32 }

@ev_enable_gpe = common dso_local global i32 0, align 4
@ACPI_GPE_ENABLE = common dso_local global i32 0, align 4
@ACPI_GPE_TYPE_MASK = common dso_local global i32 0, align 4
@ACPI_GPE_WAKE_ENABLED = common dso_local global i32 0, align 4
@ACPI_GPE_RUN_ENABLED = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_enable_gpe(%struct.acpi_gpe_event_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_gpe_event_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ev_enable_gpe, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %10 = load i32, i32* @ACPI_GPE_ENABLE, align 4
  %11 = call i32 @acpi_ev_update_gpe_enable_masks(%struct.acpi_gpe_event_info* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACPI_GPE_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %57 [
    i32 129, label %24
    i32 128, label %30
    i32 130, label %36
  ]

24:                                               ; preds = %18
  %25 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ACPI_GPE_WAKE_ENABLED, align 4
  %29 = call i32 @ACPI_SET_BIT(i32 %27, i32 %28)
  br label %60

30:                                               ; preds = %18
  %31 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ACPI_GPE_WAKE_ENABLED, align 4
  %35 = call i32 @ACPI_SET_BIT(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %18, %30
  %37 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ACPI_GPE_RUN_ENABLED, align 4
  %41 = call i32 @ACPI_SET_BIT(i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %46 = call i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %55 = call i32 @acpi_hw_write_gpe_enable_reg(%struct.acpi_gpe_event_info* %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %36
  br label %60

57:                                               ; preds = %18
  %58 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %59 = call i32 @return_ACPI_STATUS(i32 %58)
  br label %60

60:                                               ; preds = %57, %56, %24
  %61 = load i32, i32* @AE_OK, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ev_update_gpe_enable_masks(%struct.acpi_gpe_event_info*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_SET_BIT(i32, i32) #1

declare dso_local i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info*) #1

declare dso_local i32 @acpi_hw_write_gpe_enable_reg(%struct.acpi_gpe_event_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
