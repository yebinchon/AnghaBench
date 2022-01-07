; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_update_gpe_enable_masks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_update_gpe_enable_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32, i32, %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_register_info = type { i32, i32, i32 }

@ev_update_gpe_enable_masks = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_GPE_DISABLE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_GPE_TYPE_MASK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_update_gpe_enable_masks(%struct.acpi_gpe_event_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_gpe_event_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_gpe_register_info*, align 8
  %7 = alloca i64, align 8
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @ev_update_gpe_enable_masks, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %10, i32 0, i32 2
  %12 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %11, align 8
  store %struct.acpi_gpe_register_info* %12, %struct.acpi_gpe_register_info** %6, align 8
  %13 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %14 = icmp ne %struct.acpi_gpe_register_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @AE_NOT_EXIST, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %23 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = shl i32 1, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @ACPI_GPE_DISABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %18
  %32 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %33 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ACPI_CLEAR_BIT(i32 %34, i64 %35)
  %37 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %38 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @ACPI_CLEAR_BIT(i32 %39, i64 %40)
  %42 = load i32, i32* @AE_OK, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  br label %44

44:                                               ; preds = %31, %18
  %45 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ACPI_GPE_TYPE_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %83 [
    i32 129, label %50
    i32 130, label %61
    i32 128, label %72
  ]

50:                                               ; preds = %44
  %51 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @ACPI_SET_BIT(i32 %53, i64 %54)
  %56 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %57 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @ACPI_CLEAR_BIT(i32 %58, i64 %59)
  br label %86

61:                                               ; preds = %44
  %62 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %63 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @ACPI_CLEAR_BIT(i32 %64, i64 %65)
  %67 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %68 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ACPI_SET_BIT(i32 %69, i64 %70)
  br label %86

72:                                               ; preds = %44
  %73 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %74 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @ACPI_SET_BIT(i32 %75, i64 %76)
  %78 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %79 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @ACPI_SET_BIT(i32 %80, i64 %81)
  br label %86

83:                                               ; preds = %44
  %84 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %85 = call i32 @return_ACPI_STATUS(i32 %84)
  br label %86

86:                                               ; preds = %83, %72, %61, %50
  %87 = load i32, i32* @AE_OK, align 4
  %88 = call i32 @return_ACPI_STATUS(i32 %87)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_CLEAR_BIT(i32, i64) #1

declare dso_local i32 @ACPI_SET_BIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
