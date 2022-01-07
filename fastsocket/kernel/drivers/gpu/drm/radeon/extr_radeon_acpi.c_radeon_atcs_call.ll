; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atcs_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atcs_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.acpi_object*, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32, i32*, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"ATCS\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to evaluate ATCS got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (i32, i32, %struct.acpi_buffer*)* @radeon_atcs_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @radeon_atcs_call(i32 %0, i32 %1, %struct.acpi_buffer* %2) #0 {
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x %union.acpi_object], align 16
  %10 = alloca %struct.acpi_object_list, align 8
  %11 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.acpi_buffer* %2, %struct.acpi_buffer** %7, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %union.acpi_object*
  store %union.acpi_object* %15, %union.acpi_object** %12, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %21 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  store %union.acpi_object* %20, %union.acpi_object** %21, align 8
  %22 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %23 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %24 = bitcast %union.acpi_object* %23 to i8**
  store i8* %22, i8** %24, align 16
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %27 = bitcast %union.acpi_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 16
  %29 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %30 = icmp ne %struct.acpi_buffer* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %3
  %32 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %33 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %34 = bitcast %union.acpi_object* %33 to i8**
  store i8* %32, i8** %34, align 16
  %35 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %41, i32 0, i32 0
  %43 = load %union.acpi_object*, %union.acpi_object** %42, align 8
  %44 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %union.acpi_object* %43, %union.acpi_object** %46, align 16
  br label %54

47:                                               ; preds = %3
  %48 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %49 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %50 = bitcast %union.acpi_object* %49 to i8**
  store i8* %48, i8** %50, align 16
  %51 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 16
  br label %54

54:                                               ; preds = %47, %31
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @acpi_evaluate_object(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, %struct.acpi_buffer* %11)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @ACPI_FAILURE(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @AE_NOT_FOUND, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @acpi_format_exception(i64 %65)
  %67 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %69 = load %union.acpi_object*, %union.acpi_object** %68, align 8
  %70 = call i32 @kfree(%union.acpi_object* %69)
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  br label %74

71:                                               ; preds = %60, %54
  %72 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %73 = load %union.acpi_object*, %union.acpi_object** %72, align 8
  store %union.acpi_object* %73, %union.acpi_object** %4, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  ret %union.acpi_object* %75
}

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @acpi_format_exception(i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
