; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_utils.c_acpi_evaluate_integer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_utils.c_acpi_evaluate_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32 }
%union.acpi_object = type { i64 }
%struct.acpi_buffer = type { i32, %union.acpi_object*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@AE_BAD_DATA = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Return value [%llu]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_evaluate_integer(i32 %0, i32 %1, %struct.acpi_object_list* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_object_list*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object, align 8
  %12 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.acpi_object_list* %2, %struct.acpi_object_list** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = bitcast %struct.acpi_buffer* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load i64*, i64** %9, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  store i32 8, i32* %20, align 8
  %21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  store %union.acpi_object* %11, %union.acpi_object** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.acpi_object_list*, %struct.acpi_object_list** %8, align 8
  %25 = call i32 @acpi_evaluate_object(i32 %22, i32 %23, %struct.acpi_object_list* %24, %struct.acpi_buffer* %12)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @acpi_util_eval_error(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %57

35:                                               ; preds = %19
  %36 = bitcast %union.acpi_object* %11 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AE_BAD_DATA, align 4
  %44 = call i32 @acpi_util_eval_error(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %45, i32* %5, align 4
  br label %57

46:                                               ; preds = %35
  %47 = bitcast %union.acpi_object* %11 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* @ACPI_DB_INFO, align 4
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ACPI_DEBUG_PRINT(i32 %54)
  %56 = load i32, i32* @AE_OK, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %46, %40, %29, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @acpi_util_eval_error(i32, i32, i32) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
