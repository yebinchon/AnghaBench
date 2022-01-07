; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_get_pathname_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_get_pathname_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node* }

@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Invalid Namespace Node (%p) while traversing namespace\00", align 1
@ACPI_PATH_SEGMENT_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  %6 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  store i32 0, i32* %4, align 4
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  store %struct.acpi_namespace_node* %7, %struct.acpi_namespace_node** %5, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %10 = icmp ne %struct.acpi_namespace_node* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %14 = icmp ne %struct.acpi_namespace_node* %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %36

17:                                               ; preds = %15
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %19 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.acpi_namespace_node* %18)
  %20 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %25 = ptrtoint %struct.acpi_namespace_node* %24 to i32
  %26 = call i32 @ACPI_ERROR(i32 %25)
  store i32 0, i32* %2, align 4
  br label %43

27:                                               ; preds = %17
  %28 = load i64, i64* @ACPI_PATH_SEGMENT_LENGTH, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %33, i32 0, i32 0
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %34, align 8
  store %struct.acpi_namespace_node* %35, %struct.acpi_namespace_node** %5, align 8
  br label %8

36:                                               ; preds = %15
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
