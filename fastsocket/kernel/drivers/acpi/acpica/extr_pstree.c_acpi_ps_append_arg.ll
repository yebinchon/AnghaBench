; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_pstree.c_acpi_ps_append_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_pstree.c_acpi_ps_append_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %union.acpi_parse_object* }
%struct.acpi_opcode_info = type { i64, i32 }

@AML_CLASS_UNKNOWN = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid AML Opcode: 0x%2.2X\00", align 1
@AML_HAS_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_append_arg(%union.acpi_parse_object* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_opcode_info*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %3, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %4, align 8
  %7 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %9 = icmp ne %union.acpi_parse_object* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %90

11:                                               ; preds = %2
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %13 = bitcast %union.acpi_parse_object* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %15)
  store %struct.acpi_opcode_info* %16, %struct.acpi_opcode_info** %6, align 8
  %17 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %6, align 8
  %18 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AML_CLASS_UNKNOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %25 = bitcast %union.acpi_parse_object* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ACPI_ERROR(i32 %27)
  br label %90

29:                                               ; preds = %11
  %30 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AML_HAS_ARGS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %90

37:                                               ; preds = %29
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %39 = bitcast %union.acpi_parse_object* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %41, align 8
  %43 = icmp ne %union.acpi_parse_object* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %46 = bitcast %union.acpi_parse_object* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %48, align 8
  store %union.acpi_parse_object* %49, %union.acpi_parse_object** %5, align 8
  br label %50

50:                                               ; preds = %56, %44
  %51 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %52 = bitcast %union.acpi_parse_object* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %53, align 8
  %55 = icmp ne %union.acpi_parse_object* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %58 = bitcast %union.acpi_parse_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %59, align 8
  store %union.acpi_parse_object* %60, %union.acpi_parse_object** %5, align 8
  br label %50

61:                                               ; preds = %50
  %62 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %63 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %64 = bitcast %union.acpi_parse_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store %union.acpi_parse_object* %62, %union.acpi_parse_object** %65, align 8
  br label %72

66:                                               ; preds = %37
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %68 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %69 = bitcast %union.acpi_parse_object* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store %union.acpi_parse_object* %67, %union.acpi_parse_object** %71, align 8
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %76, %72
  %74 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %75 = icmp ne %union.acpi_parse_object* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %79 = bitcast %union.acpi_parse_object* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store %union.acpi_parse_object* %77, %union.acpi_parse_object** %80, align 8
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %82 = bitcast %union.acpi_parse_object* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %83, align 8
  store %union.acpi_parse_object* %84, %union.acpi_parse_object** %4, align 8
  %85 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %86 = bitcast %union.acpi_parse_object* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %73

90:                                               ; preds = %10, %22, %36, %73
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
