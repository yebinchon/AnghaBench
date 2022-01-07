; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psutils.c_acpi_ps_init_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psutils.c_acpi_ps_init_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_DESC_TYPE_PARSER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_init_op(%union.acpi_parse_object* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %6 = load i32, i32* @ACPI_DESC_TYPE_PARSER, align 4
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %8 = bitcast %union.acpi_parse_object* %7 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %12 = bitcast %union.acpi_parse_object* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.TYPE_4__* @acpi_ps_get_opcode_info(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ACPI_STRNCPY(i32 %17, i32 %21, i32 4)
  %23 = call i32 @ACPI_DISASM_ONLY_MEMBERS(i32 %22)
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_DISASM_ONLY_MEMBERS(i32) #1

declare dso_local i32 @ACPI_STRNCPY(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @acpi_ps_get_opcode_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
