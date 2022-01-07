; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exutils.c_acpi_ex_truncate_for32bit_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exutils.c_acpi_ex_truncate_for32bit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@acpi_gbl_integer_byte_width = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  %3 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %5 = icmp ne %union.acpi_operand_object* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %8 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %7)
  %9 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %6, %1
  br label %30

19:                                               ; preds = %11
  %20 = load i32, i32* @acpi_gbl_integer_byte_width, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %18, %22, %19
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
