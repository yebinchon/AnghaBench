; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psutils.c_acpi_ps_alloc_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psutils.c_acpi_ps_alloc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_opcode_info = type { i32 }

@ACPI_PARSEOP_GENERIC = common dso_local global i64 0, align 8
@AML_DEFER = common dso_local global i32 0, align 4
@ACPI_PARSEOP_DEFERRED = common dso_local global i64 0, align 8
@AML_NAMED = common dso_local global i32 0, align 4
@ACPI_PARSEOP_NAMED = common dso_local global i64 0, align 8
@AML_INT_BYTELIST_OP = common dso_local global i32 0, align 4
@ACPI_PARSEOP_BYTELIST = common dso_local global i64 0, align 8
@acpi_gbl_ps_node_cache = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_ext_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %struct.acpi_opcode_info*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @ACPI_PARSEOP_GENERIC, align 8
  store i64 %6, i64* %5, align 8
  %7 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %8)
  store %struct.acpi_opcode_info* %9, %struct.acpi_opcode_info** %4, align 8
  %10 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AML_DEFER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @ACPI_PARSEOP_DEFERRED, align 8
  store i64 %17, i64* %5, align 8
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AML_NAMED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @ACPI_PARSEOP_NAMED, align 8
  store i64 %26, i64* %5, align 8
  br label %34

27:                                               ; preds = %18
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @AML_INT_BYTELIST_OP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @ACPI_PARSEOP_BYTELIST, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @ACPI_PARSEOP_GENERIC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @acpi_gbl_ps_node_cache, align 4
  %41 = call %union.acpi_parse_object* @acpi_os_acquire_object(i32 %40)
  store %union.acpi_parse_object* %41, %union.acpi_parse_object** %3, align 8
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @acpi_gbl_ps_node_ext_cache, align 4
  %44 = call %union.acpi_parse_object* @acpi_os_acquire_object(i32 %43)
  store %union.acpi_parse_object* %44, %union.acpi_parse_object** %3, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %47 = icmp ne %union.acpi_parse_object* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @acpi_ps_init_op(%union.acpi_parse_object* %49, i32 %50)
  %52 = load i64, i64* %5, align 8
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %54 = bitcast %union.acpi_parse_object* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %45
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  ret %union.acpi_parse_object* %57
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_os_acquire_object(i32) #1

declare dso_local i32 @acpi_ps_init_op(%union.acpi_parse_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
