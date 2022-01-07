; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_get_gpe_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_get_gpe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32, %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_register_info = type { i32, i32, i32, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_ENABLED = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_WAKE_ENABLED = common dso_local global i32 0, align 4
@ACPI_EVENT_FLAG_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_get_gpe_status(%struct.acpi_gpe_event_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_gpe_event_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_gpe_register_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %15, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %17, i32 0, i32 1
  %19 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %18, align 8
  store %struct.acpi_gpe_register_info* %19, %struct.acpi_gpe_register_info** %8, align 8
  %20 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %23, i32 0, i32 1
  %25 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %24, align 8
  %26 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %22, %27
  %29 = shl i32 1, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %8, align 8
  %32 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %16
  %37 = load i32, i32* @ACPI_EVENT_FLAG_ENABLED, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %16
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %8, align 8
  %43 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @ACPI_EVENT_FLAG_WAKE_ENABLED, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %8, align 8
  %53 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %52, i32 0, i32 3
  %54 = call i32 @acpi_hw_read(i32* %6, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @ACPI_EVENT_FLAG_SET, align 4
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %58
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_hw_read(i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
