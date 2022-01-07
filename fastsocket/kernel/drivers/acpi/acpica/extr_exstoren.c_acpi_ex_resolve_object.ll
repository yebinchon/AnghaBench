; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstoren.c_acpi_ex_resolve_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstoren.c_acpi_ex_resolve_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_resolve_object = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@AML_COPY_OP = common dso_local global i32 0, align 4
@ACPI_REFCLASS_TABLE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Cannot assign type %s to %s (must be type Int/Str/Buf)\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Store into an unresolved Alias object\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_resolve_object(%union.acpi_operand_object** %0, i32 %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32, align 4
  store %union.acpi_operand_object** %0, %union.acpi_operand_object*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %8, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @ex_resolve_object, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %85 [
    i32 136, label %16
    i32 130, label %16
    i32 133, label %16
    i32 132, label %16
    i32 135, label %16
    i32 128, label %16
    i32 137, label %16
    i32 134, label %80
    i32 131, label %80
    i32 129, label %84
  ]

16:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %26 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %24, %struct.acpi_walk_state* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %86

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AML_COPY_OP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %86

39:                                               ; preds = %32
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 135
  br i1 %44, label %45, label %79

45:                                               ; preds = %39
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 137
  br i1 %50, label %51, label %79

51:                                               ; preds = %45
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 128
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %66 = bitcast %union.acpi_operand_object* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ACPI_REFCLASS_TABLE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %64, %57
  %72 = load i32, i32* @AE_INFO, align 4
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %74 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @acpi_ut_get_type_name(i32 %75)
  %77 = call i32 @ACPI_ERROR(i32 %76)
  %78 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %71, %64, %51, %45, %39
  br label %86

80:                                               ; preds = %3, %3
  %81 = load i32, i32* @AE_INFO, align 4
  %82 = call i32 @ACPI_ERROR(i32 ptrtoint ([38 x i8]* @.str.1 to i32))
  %83 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %83, i32* %9, align 4
  br label %86

84:                                               ; preds = %3
  br label %85

85:                                               ; preds = %3, %84
  br label %86

86:                                               ; preds = %85, %80, %79, %38, %30
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @return_ACPI_STATUS(i32 %87)
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
