; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_remove_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_remove_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node* }

@ns_remove_node = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_remove_node(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  %6 = load i32, i32* @ns_remove_node, align 4
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %6, %struct.acpi_namespace_node* %7)
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 2
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  store %struct.acpi_namespace_node* %11, %struct.acpi_namespace_node** %3, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %4, align 8
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 1
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  store %struct.acpi_namespace_node* %14, %struct.acpi_namespace_node** %5, align 8
  br label %15

15:                                               ; preds = %19, %1
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %18 = icmp ne %struct.acpi_namespace_node* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  store %struct.acpi_namespace_node* %20, %struct.acpi_namespace_node** %4, align 8
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 0
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %22, align 8
  store %struct.acpi_namespace_node* %23, %struct.acpi_namespace_node** %5, align 8
  br label %15

24:                                               ; preds = %15
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %26 = icmp ne %struct.acpi_namespace_node* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %28, i32 0, i32 0
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %29, align 8
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %31, i32 0, i32 0
  store %struct.acpi_namespace_node* %30, %struct.acpi_namespace_node** %32, align 8
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %35 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %34, i32 0, i32 0
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %35, align 8
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %37, i32 0, i32 1
  store %struct.acpi_namespace_node* %36, %struct.acpi_namespace_node** %38, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %41 = call i32 @acpi_ns_delete_node(%struct.acpi_namespace_node* %40)
  %42 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_delete_node(%struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
