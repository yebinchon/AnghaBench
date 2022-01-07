; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_handle_to_pathname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_handle_to_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64 }
%struct.acpi_namespace_node = type { i32 }

@ns_handle_to_pathname = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s [%X]\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_handle_to_pathname(i32 %0, %struct.acpi_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %5, align 8
  %9 = load i32, i32* @ns_handle_to_pathname, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i32 %12)
  store %struct.acpi_namespace_node* %13, %struct.acpi_namespace_node** %7, align 8
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %15 = icmp ne %struct.acpi_namespace_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %21 = call i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %28, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @acpi_ns_build_external_path(%struct.acpi_namespace_node* %38, i64 %39, i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32, i32* @ACPI_DB_EXEC, align 4
  %52 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @ACPI_DEBUG_PRINT(i32 %57)
  %59 = load i32, i32* @AE_OK, align 4
  %60 = call i32 @return_ACPI_STATUS(i32 %59)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_build_external_path(%struct.acpi_namespace_node*, i64, i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
