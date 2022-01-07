; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_get_external_pathname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_get_external_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@ns_get_external_pathname = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not allocate %u bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ns_get_external_pathname(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  %7 = load i32, i32* @ns_get_external_pathname, align 4
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %struct.acpi_namespace_node* %8)
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %11 = call i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @return_PTR(i8* null)
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @ACPI_ALLOCATE_ZEROED(i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @AE_INFO, align 4
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ACPI_ERROR(i32 %24)
  %26 = call i32 @return_PTR(i8* null)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @acpi_ns_build_external_path(%struct.acpi_namespace_node* %28, i64 %29, i8* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @ACPI_FREE(i8* %36)
  %38 = call i32 @return_PTR(i8* null)
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @return_PTR(i8* %40)
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node*) #1

declare dso_local i32 @return_PTR(i8*) #1

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ns_build_external_path(%struct.acpi_namespace_node*, i64, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
