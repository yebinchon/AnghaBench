; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscreate.c_acpi_rs_create_aml_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscreate.c_acpi_rs_create_aml_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.acpi_buffer = type { i64, i32 }

@rs_create_aml_resources = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"LinkedListBuffer = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"AmlSizeNeeded=%X, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"OutputBuffer %p Length %X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_rs_create_aml_resources(%struct.acpi_resource* %0, %struct.acpi_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca %struct.acpi_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @rs_create_aml_resources, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i32, i32* @ACPI_DB_INFO, align 4
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %12 = ptrtoint %struct.acpi_resource* %11 to i32
  %13 = call i32 @ACPI_DEBUG_PRINT(i32 %12)
  %14 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %15 = call i32 @acpi_rs_get_aml_length(%struct.acpi_resource* %14, i64* %7)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @ACPI_DB_INFO, align 4
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @acpi_format_exception(i32 %19)
  %21 = call i32 @ACPI_DEBUG_PRINT(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %29, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @return_ACPI_STATUS(i32 %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @acpi_rs_convert_resources_to_aml(%struct.acpi_resource* %39, i64 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* @ACPI_DB_INFO, align 4
  %53 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ACPI_DEBUG_PRINT(i32 %59)
  %61 = load i32, i32* @AE_OK, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_rs_get_aml_length(%struct.acpi_resource*, i64*) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #1

declare dso_local i32 @acpi_rs_convert_resources_to_aml(%struct.acpi_resource*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
