; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstoren.c_acpi_ex_store_object_to_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstoren.c_acpi_ex_store_object_to_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_store_object_to_object = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Store into type %s not implemented\00", align 1
@AE_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2, %struct.acpi_walk_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %8, align 8
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %9, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @ex_store_object_to_object, align 4
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, %union.acpi_operand_object* %14)
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %10, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %18 = icmp ne %union.acpi_operand_object* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %23 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %20, %union.acpi_operand_object** %21, %struct.acpi_walk_state* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %19, %4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %26
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %43 = call i32 @acpi_ex_convert_to_target_type(i32 %40, %union.acpi_operand_object* %41, %union.acpi_operand_object** %10, %struct.acpi_walk_state* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %53 = icmp eq %union.acpi_operand_object* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %56 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  store %union.acpi_operand_object* %55, %union.acpi_operand_object** %56, align 8
  %57 = load i32, i32* @AE_OK, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_3__*
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %87 [
    i32 130, label %65
    i32 128, label %75
    i32 131, label %79
    i32 129, label %83
  ]

65:                                               ; preds = %60
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %74 = call i32 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %73)
  br label %93

75:                                               ; preds = %60
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %78 = call i32 @acpi_ex_store_string_to_string(%union.acpi_operand_object* %76, %union.acpi_operand_object* %77)
  store i32 %78, i32* %11, align 4
  br label %93

79:                                               ; preds = %60
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %82 = call i32 @acpi_ex_store_buffer_to_buffer(%union.acpi_operand_object* %80, %union.acpi_operand_object* %81)
  store i32 %82, i32* %11, align 4
  br label %93

83:                                               ; preds = %60
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %86 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %84, %union.acpi_operand_object** %7, %struct.acpi_walk_state* %85)
  store i32 %86, i32* %11, align 4
  br label %93

87:                                               ; preds = %60
  %88 = load i32, i32* @AE_INFO, align 4
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %90 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %89)
  %91 = call i32 @ACPI_WARNING(i32 %90)
  %92 = load i32, i32* @AE_NOT_IMPLEMENTED, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %87, %83, %79, %75, %65
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %96 = icmp ne %union.acpi_operand_object* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %99 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %102 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  store %union.acpi_operand_object* %101, %union.acpi_operand_object** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @return_ACPI_STATUS(i32 %103)
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_convert_to_target_type(i32, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_store_string_to_string(%union.acpi_operand_object*, %union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_store_buffer_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
