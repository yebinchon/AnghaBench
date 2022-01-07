; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_execute_reg_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_execute_reg_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.acpi_evaluate_info = type { i32*, i32, %union.acpi_operand_object**, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ev_execute_reg_method = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IGNORE_RETURN_VALUE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_evaluate_info*, align 8
  %7 = alloca [3 x %union.acpi_operand_object*], align 16
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ev_execute_reg_method, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %13 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %12)
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %8, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %15 = icmp ne %union.acpi_operand_object* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_NOT_EXIST, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @AE_OK, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = call %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32 32)
  store %struct.acpi_evaluate_info* %29, %struct.acpi_evaluate_info** %6, align 8
  %30 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %31 = icmp ne %struct.acpi_evaluate_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @AE_NO_MEMORY, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %41 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %43 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 0
  %45 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %46 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %45, i32 0, i32 2
  store %union.acpi_operand_object** %44, %union.acpi_operand_object*** %46, align 8
  %47 = load i32, i32* @ACPI_IGNORE_RETURN_VALUE, align 4
  %48 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %49 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %51 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %50)
  %52 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 0
  store %union.acpi_operand_object* %51, %union.acpi_operand_object** %52, align 16
  %53 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 0
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %53, align 16
  %55 = icmp ne %union.acpi_operand_object* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %35
  %57 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %57, i32* %9, align 4
  br label %97

58:                                               ; preds = %35
  %59 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %60 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %59)
  %61 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 1
  store %union.acpi_operand_object* %60, %union.acpi_operand_object** %61, align 8
  %62 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 1
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %62, align 8
  %64 = icmp ne %union.acpi_operand_object* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %66, i32* %9, align 4
  br label %93

67:                                               ; preds = %58
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_5__*
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 0
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %72, align 16
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 1
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %77, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 2
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %81, align 16
  %82 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %83 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %84 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @acpi_ut_display_init_pathname(i32 %82, i32* %85, i32* null)
  %87 = call i32 @ACPI_DEBUG_EXEC(i32 %86)
  %88 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %89 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %88)
  store i32 %89, i32* %9, align 4
  %90 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 1
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %90, align 8
  %92 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %91)
  br label %93

93:                                               ; preds = %67, %65
  %94 = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %7, i64 0, i64 0
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %94, align 16
  %96 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %95)
  br label %97

97:                                               ; preds = %93, %56
  %98 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %99 = call i32 @ACPI_FREE(%struct.acpi_evaluate_info* %98)
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @return_ACPI_STATUS(i32 %100)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @ACPI_DEBUG_EXEC(i32) #1

declare dso_local i32 @acpi_ut_display_init_pathname(i32, i32*, i32*) #1

declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_evaluate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
