; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nswalk.c_acpi_ns_get_next_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nswalk.c_acpi_ns_get_next_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %5, align 8
  %6 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %8 = icmp ne %struct.acpi_namespace_node* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 1
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  store %struct.acpi_namespace_node* %12, %struct.acpi_namespace_node** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 0
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %15, align 8
  store %struct.acpi_namespace_node* %16, %struct.acpi_namespace_node** %3, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  ret %struct.acpi_namespace_node* %18
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
