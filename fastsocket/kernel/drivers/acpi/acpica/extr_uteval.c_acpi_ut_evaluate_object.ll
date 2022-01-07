; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_uteval.c_acpi_ut_evaluate_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_uteval.c_acpi_ut_evaluate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_evaluate_info = type { i8*, %union.acpi_operand_object*, %struct.acpi_namespace_node* }

@ut_evaluate_object = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"[%4.4s.%s] was not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Method execution failed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"No object was returned from\00", align 1
@AE_NOT_EXIST = common dso_local global i64 0, align 8
@ACPI_BTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_BTYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_BTYPE_STRING = common dso_local global i32 0, align 4
@ACPI_BTYPE_PACKAGE = common dso_local global i32 0, align 4
@acpi_gbl_enable_interpreter_slack = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Return object type is incorrect\00", align 1
@AE_TYPE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Type returned from %s was incorrect: %s, expected Btypes: %X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* %1, i32 %2, %union.acpi_operand_object** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object**, align 8
  %10 = alloca %struct.acpi_evaluate_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %9, align 8
  %13 = load i32, i32* @ut_evaluate_object, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = call %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32 24)
  store %struct.acpi_evaluate_info* %15, %struct.acpi_evaluate_info** %10, align 8
  %16 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %17 = icmp ne %struct.acpi_evaluate_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @AE_NO_MEMORY, align 8
  %20 = call i32 @return_ACPI_STATUS(i64 %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %24 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 2
  store %struct.acpi_namespace_node* %22, %struct.acpi_namespace_node** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %27 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %29 = call i64 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @ACPI_FAILURE(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %21
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @AE_NOT_FOUND, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* @ACPI_DB_EXEC, align 4
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %40 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = call i32 @ACPI_DEBUG_PRINT(i32 %42)
  br label %49

44:                                               ; preds = %33
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @ACPI_ERROR_METHOD(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_namespace_node* %45, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %37
  br label %120

50:                                               ; preds = %21
  %51 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %52 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %51, i32 0, i32 1
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %52, align 8
  %54 = icmp ne %union.acpi_operand_object* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* @AE_NOT_EXIST, align 8
  %62 = call i32 @ACPI_ERROR_METHOD(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_namespace_node* %59, i8* %60, i64 %61)
  %63 = load i64, i64* @AE_NOT_EXIST, align 8
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %58, %55
  br label %120

65:                                               ; preds = %50
  %66 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %67 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %66, i32 0, i32 1
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %67, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %80 [
    i32 130, label %72
    i32 131, label %74
    i32 128, label %76
    i32 129, label %78
  ]

72:                                               ; preds = %65
  %73 = load i32, i32* @ACPI_BTYPE_INTEGER, align 4
  store i32 %73, i32* %12, align 4
  br label %81

74:                                               ; preds = %65
  %75 = load i32, i32* @ACPI_BTYPE_BUFFER, align 4
  store i32 %75, i32* %12, align 4
  br label %81

76:                                               ; preds = %65
  %77 = load i32, i32* @ACPI_BTYPE_STRING, align 4
  store i32 %77, i32* %12, align 4
  br label %81

78:                                               ; preds = %65
  %79 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  store i32 %79, i32* %12, align 4
  br label %81

80:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %80, %78, %76, %74, %72
  %82 = load i64, i64* @acpi_gbl_enable_interpreter_slack, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %89 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %88, i32 0, i32 1
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %89, align 8
  %91 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %90)
  br label %120

92:                                               ; preds = %84, %81
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %92
  %98 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* @AE_TYPE, align 8
  %101 = call i32 @ACPI_ERROR_METHOD(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_namespace_node* %98, i8* %99, i64 %100)
  %102 = load i32, i32* @AE_INFO, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %105 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %104, i32 0, i32 1
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %105, align 8
  %107 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %106)
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @ACPI_ERROR(i32 %108)
  %110 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %111 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %110, i32 0, i32 1
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %111, align 8
  %113 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %112)
  %114 = load i64, i64* @AE_TYPE, align 8
  store i64 %114, i64* %11, align 8
  br label %120

115:                                              ; preds = %92
  %116 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %117 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %116, i32 0, i32 1
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %117, align 8
  %119 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  store %union.acpi_operand_object* %118, %union.acpi_operand_object** %119, align 8
  br label %120

120:                                              ; preds = %115, %97, %87, %64, %49
  %121 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %10, align 8
  %122 = call i32 @ACPI_FREE(%struct.acpi_evaluate_info* %121)
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @return_ACPI_STATUS(i64 %123)
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_ERROR_METHOD(i8*, %struct.acpi_namespace_node*, i8*, i64) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_evaluate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
