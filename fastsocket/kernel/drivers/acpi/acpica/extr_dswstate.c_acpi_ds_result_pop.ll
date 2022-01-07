; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_result_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_result_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%struct.acpi_walk_state = type { i64, %union.acpi_generic_state* }
%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_operand_object** }

@ds_result_pop = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No results on result stack\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"No result state for result stack\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Result stack is empty! State=%p\00", align 1
@AE_AML_NO_RETURN_VALUE = common dso_local global i32 0, align 4
@ACPI_RESULTS_FRAME_OBJ_NUM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"No result objects on result stack, State=%p\00", align 1
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Obj=%p [%s] Index=%X State=%p Num=%X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_result_pop(%union.acpi_operand_object** %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.acpi_generic_state*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object** %0, %union.acpi_operand_object*** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  %9 = load i32, i32* @ds_result_pop, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 1
  %13 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  store %union.acpi_generic_state* %13, %union.acpi_generic_state** %7, align 8
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %15 = icmp ne %union.acpi_generic_state* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @AE_INFO, align 4
  %23 = call i32 @ACPI_ERROR(i32 ptrtoint ([27 x i8]* @.str to i32))
  %24 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %16, %2
  %26 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %27 = icmp ne %union.acpi_generic_state* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @AE_INFO, align 4
  %35 = call i32 @ACPI_ERROR(i32 ptrtoint ([33 x i8]* @.str.1 to i32))
  %36 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %28, %25
  %38 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %39 = icmp ne %union.acpi_generic_state* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @AE_INFO, align 4
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %43 = ptrtoint %struct.acpi_walk_state* %42 to i32
  %44 = call i32 @ACPI_ERROR(i32 %43)
  %45 = load i32, i32* @AE_AML_NO_RETURN_VALUE, align 4
  store i32 %45, i32* %3, align 4
  br label %106

46:                                               ; preds = %37
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ACPI_RESULTS_FRAME_OBJ_NUM, align 8
  %55 = urem i64 %53, %54
  store i64 %55, i64* %6, align 8
  %56 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %57 = bitcast %union.acpi_generic_state* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %59, i64 %60
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %61, align 8
  %63 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %62, %union.acpi_operand_object** %63, align 8
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %64, align 8
  %66 = icmp ne %union.acpi_operand_object* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %46
  %68 = load i32, i32* @AE_INFO, align 4
  %69 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %70 = ptrtoint %struct.acpi_walk_state* %69 to i32
  %71 = call i32 @ACPI_ERROR(i32 %70)
  %72 = load i32, i32* @AE_AML_NO_RETURN_VALUE, align 4
  store i32 %72, i32* %3, align 4
  br label %106

73:                                               ; preds = %46
  %74 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %75 = bitcast %union.acpi_generic_state* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %77, i64 %78
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %84 = call i32 @acpi_ds_result_stack_pop(%struct.acpi_walk_state* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @ACPI_FAILURE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %106

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* @ACPI_DB_EXEC, align 4
  %93 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %93, align 8
  %95 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %95, align 8
  %97 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %96)
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %100 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %101 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @ACPI_DEBUG_PRINT(i32 %103)
  %105 = load i32, i32* @AE_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %91, %88, %67, %40, %33, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ds_result_stack_pop(%struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
