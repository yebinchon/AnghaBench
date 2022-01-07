; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswexec.c_acpi_ds_get_predicate_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswexec.c_acpi_ds_get_predicate_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_8__*, i32, %union.acpi_operand_object** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ds_get_predicate_value = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not get result from predicate evaluation\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No predicate ObjDesc=%p State=%p\00", align 1
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"Bad predicate (not an integer) ObjDesc=%p State=%p Type=%X\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AE_CTRL_FALSE = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Completed a predicate eval=%X Op=%p\0A\00", align 1
@ACPI_CONTROL_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_get_predicate_value(%struct.acpi_walk_state* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %6, align 4
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  %10 = load i32, i32* @ds_get_predicate_value, align 4
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %struct.acpi_walk_state* %11)
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %19 = icmp ne %union.acpi_operand_object* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %22 = call i32 @acpi_ds_result_pop(%union.acpi_operand_object** %7, %struct.acpi_walk_state* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([47 x i8]* @.str to i32))
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %34, i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 2
  %48 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %47, align 8
  %49 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %48, i64 0
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %51 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %49, %struct.acpi_walk_state* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 2
  %61 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %60, align 8
  %62 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %61, i64 0
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %62, align 8
  store %union.acpi_operand_object* %63, %union.acpi_operand_object** %7, align 8
  br label %64

64:                                               ; preds = %58, %32
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %66 = icmp ne %union.acpi_operand_object* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @AE_INFO, align 4
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %71 = ptrtoint %struct.acpi_walk_state* %70 to i32
  %72 = call i32 @ACPI_ERROR(i32 %71)
  %73 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %74 = call i32 @return_ACPI_STATUS(i32 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %77 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %76, %union.acpi_operand_object** %8, i32 16)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %128

82:                                               ; preds = %75
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i32, i32* @AE_INFO, align 4
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %92 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @ACPI_ERROR(i32 %97)
  %99 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %99, i32* %6, align 4
  br label %128

100:                                              ; preds = %82
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %102 = call i32 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %101)
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %104 = bitcast %union.acpi_operand_object* %103 to %struct.TYPE_6__*
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i32, i32* @TRUE, align 4
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %111 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %109, i32* %114, align 8
  br label %123

115:                                              ; preds = %100
  %116 = load i32, i32* @FALSE, align 4
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %118 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i32 %116, i32* %121, align 8
  %122 = load i32, i32* @AE_CTRL_FALSE, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %115, %108
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %125 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %126 = load i32, i32* @TRUE, align 4
  %127 = call i32 @acpi_ds_do_implicit_return(%union.acpi_operand_object* %124, %struct.acpi_walk_state* %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %89, %81
  %129 = load i32, i32* @ACPI_DB_EXEC, align 4
  %130 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %131 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %137 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ACPI_DEBUG_PRINT(i32 %138)
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %141 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %142 = call i32 @acpi_db_display_result_object(%union.acpi_operand_object* %140, %struct.acpi_walk_state* %141)
  %143 = call i32 @ACPI_DEBUGGER_EXEC(i32 %142)
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %145 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %146 = icmp ne %union.acpi_operand_object* %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %128
  %148 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %149 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %148)
  br label %150

150:                                              ; preds = %147, %128
  %151 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %152 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %151)
  %153 = load i64, i64* @ACPI_CONTROL_NORMAL, align 8
  %154 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %155 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i64 %153, i64* %158, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @return_ACPI_STATUS(i32 %159)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_result_pop(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state*, i32, i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ds_do_implicit_return(%union.acpi_operand_object*, %struct.acpi_walk_state*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_DEBUGGER_EXEC(i32) #1

declare dso_local i32 @acpi_db_display_result_object(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
