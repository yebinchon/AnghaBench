; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsxfeval.c_acpi_evaluate_object_typed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsxfeval.c_acpi_evaluate_object_typed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32 }
%struct.acpi_buffer = type { i64, i32* }
%union.acpi_object = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No return value\00", align 1
@AE_NULL_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Incorrect return type [%s] requested [%s]\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_evaluate_object_typed(i32 %0, i32 %1, %struct.acpi_object_list* %2, %struct.acpi_buffer* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_object_list*, align 8
  %10 = alloca %struct.acpi_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.acpi_object_list* %2, %struct.acpi_object_list** %9, align 8
  store %struct.acpi_buffer* %3, %struct.acpi_buffer** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 (i32, i32, %struct.acpi_object_list*, %struct.acpi_buffer*, i64)* @acpi_evaluate_object_typed)
  %16 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %17 = icmp ne %struct.acpi_buffer* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %18, %5
  %22 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_ALLOCATE_BUFFER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.acpi_object_list*, %struct.acpi_object_list** %9, align 8
  %33 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %34 = call i32 @acpi_evaluate_object(i32 %30, i32 %31, %struct.acpi_object_list* %32, %struct.acpi_buffer* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @AE_OK, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %50 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @AE_INFO, align 4
  %55 = call i32 @ACPI_ERROR(i32 ptrtoint ([16 x i8]* @.str to i32))
  %56 = load i32, i32* @AE_NULL_OBJECT, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %60 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to %union.acpi_object*
  %63 = bitcast %union.acpi_object* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @AE_OK, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load i32, i32* @AE_INFO, align 4
  %72 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %73 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to %union.acpi_object*
  %76 = bitcast %union.acpi_object* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @acpi_ut_get_type_name(i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @acpi_ut_get_type_name(i64 %79)
  %81 = call i32 @ACPI_ERROR(i32 %80)
  %82 = load i64, i64* %13, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %70
  %85 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %86 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @ACPI_FREE(i32* %87)
  %89 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %90 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %84, %70
  %92 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %93 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @AE_TYPE, align 4
  %95 = call i32 @return_ACPI_STATUS(i32 %94)
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i32, i32, %struct.acpi_object_list*, %struct.acpi_buffer*, i64)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i64) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
