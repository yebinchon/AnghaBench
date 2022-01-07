; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rsxface.c_acpi_get_irq_routing_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rsxface.c_acpi_get_irq_routing_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32 }
%struct.acpi_namespace_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_irq_routing_table(i32 %0, %struct.acpi_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_namespace_node*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %5, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 (i32, %struct.acpi_buffer*)* @acpi_get_irq_routing_table)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %11 = call i32 @acpi_rs_validate_parameters(i32 %9, %struct.acpi_buffer* %10, %struct.acpi_namespace_node** %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %20 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %21 = call i32 @acpi_rs_get_prt_method_data(%struct.acpi_namespace_node* %19, %struct.acpi_buffer* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i32, %struct.acpi_buffer*)*) #1

declare dso_local i32 @acpi_rs_validate_parameters(i32, %struct.acpi_buffer*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_rs_get_prt_method_data(%struct.acpi_namespace_node*, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
