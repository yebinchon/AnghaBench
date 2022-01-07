; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_get_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }

@ds_method_data_get_node = common dso_local global i32 0, align 4
@ACPI_METHOD_MAX_LOCAL = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Local index %d is invalid (max %d)\00", align 1
@AE_AML_INVALID_INDEX = common dso_local global i32 0, align 4
@ACPI_METHOD_MAX_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Arg index %d is invalid (max %d)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Type %d is invalid\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_method_data_get_node(i32 %0, i64 %1, %struct.acpi_walk_state* %2, %struct.acpi_namespace_node** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.acpi_walk_state*, align 8
  %9 = alloca %struct.acpi_namespace_node**, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %8, align 8
  store %struct.acpi_namespace_node** %3, %struct.acpi_namespace_node*** %9, align 8
  %10 = load i32, i32* @ds_method_data_get_node, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %51 [
    i32 128, label %13
    i32 129, label %32
  ]

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ACPI_METHOD_MAX_LOCAL, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* @AE_INFO, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ACPI_METHOD_MAX_LOCAL, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @ACPI_ERROR(i32 %21)
  %23 = load i32, i32* @AE_AML_INVALID_INDEX, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %17, %13
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 1
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %28, i64 %29
  %31 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %9, align 8
  store %struct.acpi_namespace_node* %30, %struct.acpi_namespace_node** %31, align 8
  br label %57

32:                                               ; preds = %4
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @ACPI_METHOD_MAX_ARG, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* @AE_INFO, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @ACPI_METHOD_MAX_ARG, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ACPI_ERROR(i32 %40)
  %42 = load i32, i32* @AE_AML_INVALID_INDEX, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  br label %44

44:                                               ; preds = %36, %32
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %46 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %45, i32 0, i32 0
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %47, i64 %48
  %50 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %9, align 8
  store %struct.acpi_namespace_node* %49, %struct.acpi_namespace_node** %50, align 8
  br label %57

51:                                               ; preds = %4
  %52 = load i32, i32* @AE_INFO, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ACPI_ERROR(i32 %53)
  %55 = load i32, i32* @AE_TYPE, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  br label %57

57:                                               ; preds = %51, %44, %25
  %58 = load i32, i32* @AE_OK, align 4
  %59 = call i32 @return_ACPI_STATUS(i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
