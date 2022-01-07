; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psopcode.c_acpi_ps_get_opcode_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psopcode.c_acpi_ps_get_opcode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_opcode_info = type { i32 }

@ps_get_opcode_info = common dso_local global i32 0, align 4
@acpi_gbl_aml_op_info = common dso_local global %struct.acpi_opcode_info* null, align 8
@acpi_gbl_short_op_index = common dso_local global i64* null, align 8
@AML_EXTENDED_OPCODE = common dso_local global i32 0, align 4
@MAX_EXTENDED_OPCODE = common dso_local global i64 0, align 8
@acpi_gbl_long_op_index = common dso_local global i64* null, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown AML opcode [%4.4X]\0A\00", align 1
@_UNK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %0) #0 {
  %2 = alloca %struct.acpi_opcode_info*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @ps_get_opcode_info, align 4
  %5 = call i32 @ACPI_FUNCTION_NAME(i32 %4)
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 65280
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** @acpi_gbl_aml_op_info, align 8
  %11 = load i64*, i64** @acpi_gbl_short_op_index, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %10, i64 %15
  store %struct.acpi_opcode_info* %16, %struct.acpi_opcode_info** %2, align 8
  br label %42

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 65280
  %20 = load i32, i32* @AML_EXTENDED_OPCODE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @MAX_EXTENDED_OPCODE, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** @acpi_gbl_aml_op_info, align 8
  %29 = load i64*, i64** @acpi_gbl_long_op_index, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %28, i64 %33
  store %struct.acpi_opcode_info* %34, %struct.acpi_opcode_info** %2, align 8
  br label %42

35:                                               ; preds = %22, %17
  %36 = load i32, i32* @ACPI_DB_EXEC, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ACPI_DEBUG_PRINT(i32 %37)
  %39 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** @acpi_gbl_aml_op_info, align 8
  %40 = load i64, i64* @_UNK, align 8
  %41 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %39, i64 %40
  store %struct.acpi_opcode_info* %41, %struct.acpi_opcode_info** %2, align 8
  br label %42

42:                                               ; preds = %35, %27, %9
  %43 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %2, align 8
  ret %struct.acpi_opcode_info* %43
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
