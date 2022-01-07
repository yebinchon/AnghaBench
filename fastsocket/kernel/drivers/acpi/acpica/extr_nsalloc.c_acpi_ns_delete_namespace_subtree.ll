; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_namespace_subtree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_namespace_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node*, i64 }

@ns_delete_namespace_subtree = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_delete_namespace_subtree(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i64, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %3, align 8
  store i64 1, i64* %4, align 8
  %5 = load i32, i32* @ns_delete_namespace_subtree, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %8 = icmp ne %struct.acpi_namespace_node* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @return_VOID, align 4
  br label %11

11:                                               ; preds = %9, %1
  br label %12

12:                                               ; preds = %42, %11
  %13 = load i64, i64* %4, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %18 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %16, %struct.acpi_namespace_node* %17)
  store %struct.acpi_namespace_node* %18, %struct.acpi_namespace_node** %3, align 8
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %20 = icmp ne %struct.acpi_namespace_node* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %23 = call i32 @acpi_ns_detach_object(%struct.acpi_namespace_node* %22)
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %4, align 8
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  store %struct.acpi_namespace_node* %31, %struct.acpi_namespace_node** %2, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %3, align 8
  br label %32

32:                                               ; preds = %28, %21
  br label %42

33:                                               ; preds = %15
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %4, align 8
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %37 = call i32 @acpi_ns_delete_children(%struct.acpi_namespace_node* %36)
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  store %struct.acpi_namespace_node* %38, %struct.acpi_namespace_node** %3, align 8
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %40 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %39, i32 0, i32 0
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %40, align 8
  store %struct.acpi_namespace_node* %41, %struct.acpi_namespace_node** %2, align 8
  br label %42

42:                                               ; preds = %33, %32
  br label %12

43:                                               ; preds = %12
  %44 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node*, %struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_detach_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_delete_children(%struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
