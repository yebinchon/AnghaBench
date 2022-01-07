; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psutils.c_acpi_ps_free_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psutils.c_acpi_ps_free_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ps_free_op = common dso_local global i32 0, align 4
@AML_INT_RETURN_VALUE_OP = common dso_local global i64 0, align 8
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Free retval op: %p\0A\00", align 1
@ACPI_PARSEOP_GENERIC = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_cache = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_ext_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_free_op(%union.acpi_parse_object* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %2, align 8
  %3 = load i32, i32* @ps_free_op, align 4
  %4 = call i32 @ACPI_FUNCTION_NAME(i32 %3)
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %6 = bitcast %union.acpi_parse_object* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AML_INT_RETURN_VALUE_OP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %14 = ptrtoint %union.acpi_parse_object* %13 to i32
  %15 = call i32 @ACPI_DEBUG_PRINT(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %18 = bitcast %union.acpi_parse_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ACPI_PARSEOP_GENERIC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @acpi_gbl_ps_node_cache, align 4
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %27 = call i32 @acpi_os_release_object(i32 %25, %union.acpi_parse_object* %26)
  br label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @acpi_gbl_ps_node_ext_cache, align 4
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %31 = call i32 @acpi_os_release_object(i32 %29, %union.acpi_parse_object* %30)
  br label %32

32:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_release_object(i32, %union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
