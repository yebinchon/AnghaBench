; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_pstree.c_acpi_ps_get_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_pstree.c_acpi_ps_get_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_parse_object*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %union.acpi_parse_object* }
%struct.acpi_opcode_info = type { i64, i32 }

@AML_CLASS_UNKNOWN = common dso_local global i64 0, align 8
@AML_HAS_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %0, i64 %1) #0 {
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca %struct.acpi_opcode_info*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %4, align 8
  store i64 %1, i64* %5, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %6, align 8
  %8 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %10 = bitcast %union.acpi_parse_object* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %12)
  store %struct.acpi_opcode_info* %13, %struct.acpi_opcode_info** %7, align 8
  %14 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %7, align 8
  %15 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AML_CLASS_UNKNOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %3, align 8
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %7, align 8
  %22 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AML_HAS_ARGS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %3, align 8
  br label %51

28:                                               ; preds = %20
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %30 = bitcast %union.acpi_parse_object* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %32, align 8
  store %union.acpi_parse_object* %33, %union.acpi_parse_object** %6, align 8
  br label %34

34:                                               ; preds = %42, %28
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %36 = icmp ne %union.acpi_parse_object* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %5, align 8
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %46 = bitcast %union.acpi_parse_object* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %47, align 8
  store %union.acpi_parse_object* %48, %union.acpi_parse_object** %6, align 8
  br label %34

49:                                               ; preds = %40
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  store %union.acpi_parse_object* %50, %union.acpi_parse_object** %3, align 8
  br label %51

51:                                               ; preds = %49, %27, %19
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  ret %union.acpi_parse_object* %52
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
