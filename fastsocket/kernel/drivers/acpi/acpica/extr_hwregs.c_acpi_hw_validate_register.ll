; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_validate_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_validate_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i64, i32, i64, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_BAD_ADDRESS = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unsupported address space: 0x%X\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unsupported register bit width: 0x%X\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unsupported register bit offset: 0x%X\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_generic_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.acpi_generic_address* %0, %struct.acpi_generic_address** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %9 = icmp ne %struct.acpi_generic_address* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %11, i32* %4, align 4
  br label %84

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %14, i32 0, i32 3
  %16 = call i32 @ACPI_MOVE_64_TO_64(i32* %13, i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @AE_BAD_ADDRESS, align 4
  store i32 %21, i32* %4, align 4
  br label %84

22:                                               ; preds = %12
  %23 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_IO, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* @AE_INFO, align 4
  %36 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %37 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ACPI_ERROR(i32 %39)
  %41 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %41, i32* %4, align 4
  br label %84

42:                                               ; preds = %28, %22
  %43 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 8
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %49 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 16
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ACPI_ERROR(i32 %67)
  %69 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %69, i32* %4, align 4
  br label %84

70:                                               ; preds = %57, %52, %47, %42
  %71 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %72 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @AE_INFO, align 4
  %77 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %78 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ACPI_WARNING(i32 %80)
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* @AE_OK, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %63, %34, %20, %10
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ACPI_MOVE_64_TO_64(i32*, i32*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
