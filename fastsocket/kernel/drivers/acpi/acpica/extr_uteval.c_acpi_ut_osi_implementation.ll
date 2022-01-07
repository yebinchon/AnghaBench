; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_uteval.c_acpi_ut_osi_implementation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_uteval.c_acpi_ut_osi_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.acpi_walk_state = type { %union.acpi_operand_object*, %struct.TYPE_7__* }
%union.acpi_operand_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %union.acpi_operand_object* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@ut_osi_implementation = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@AE_TYPE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_interfaces_supported = common dso_local global %struct.TYPE_11__* null, align 8
@acpi_gbl_osi_data = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ACPI: BIOS _OSI(%s) is %ssupported\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_osi_implementation(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %9 = load i32, i32* @ut_osi_implementation, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %5, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %18 = icmp ne %union.acpi_operand_object* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %1
  %27 = load i32, i32* @AE_TYPE, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %31 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %30)
  store %union.acpi_operand_object* %31, %union.acpi_operand_object** %6, align 8
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %33 = icmp ne %union.acpi_operand_object* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @AE_NO_MEMORY, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %34, %29
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %72, %37
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @acpi_interfaces_supported, align 8
  %41 = call i64 @ACPI_ARRAY_LENGTH(%struct.TYPE_11__* %40)
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_9__*
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @acpi_interfaces_supported, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ACPI_STRCMP(i32 %47, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @acpi_interfaces_supported, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @acpi_gbl_osi_data, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @acpi_interfaces_supported, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* @acpi_gbl_osi_data, align 8
  br label %69

69:                                               ; preds = %63, %55
  %70 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %70, i64* %7, align 8
  br label %87

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %38

75:                                               ; preds = %38
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @acpi_os_validate_interface(i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i64 @ACPI_SUCCESS(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %84, %75
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i32, i32* @ACPI_DB_INFO, align 4
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_9__*
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %97 = ptrtoint i8* %96 to i32
  %98 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %97)
  %99 = load i64, i64* %7, align 8
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_10__*
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %104 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %105 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %104, i32 0, i32 0
  store %union.acpi_operand_object* %103, %union.acpi_operand_object** %105, align 8
  %106 = load i32, i32* @AE_OK, align 4
  %107 = call i32 @return_ACPI_STATUS(i32 %106)
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i64 @ACPI_ARRAY_LENGTH(%struct.TYPE_11__*) #1

declare dso_local i32 @ACPI_STRCMP(i32, i32) #1

declare dso_local i32 @acpi_os_validate_interface(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
