; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_wakeup_device_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_wakeup_device_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { i32 }
%struct.acpi_device_id = type { i8*, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PNP0C0D\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0C0C\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PNP0C0E\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_PRW\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Evaluating _PRW\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Extracting _PRW package\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"error in _DSW or _PSW evaluation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_bus_get_wakeup_device_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_get_wakeup_device_flags(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.acpi_device_id], align 16
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %9 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 2
  store i32 0, i32* %12, align 8
  store %union.acpi_object* null, %union.acpi_object** %5, align 8
  %13 = bitcast [4 x %struct.acpi_device_id]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 64, i1 false)
  %14 = bitcast i8* %13 to [4 x %struct.acpi_device_id]*
  %15 = getelementptr inbounds [4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* %14, i32 0, i32 1
  %18 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* %14, i32 0, i32 2
  %20 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* %14, i32 0, i32 3
  %22 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %22, align 16
  %23 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @acpi_evaluate_object(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, %struct.acpi_buffer* %4)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @AE_INFO, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.5 to i32))
  br label %77

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %union.acpi_object*
  store %union.acpi_object* %37, %union.acpi_object** %5, align 8
  %38 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %39 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %40 = call i32 @acpi_bus_extract_wakeup_device_power_package(%struct.acpi_device* %38, %union.acpi_object* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @AE_INFO, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([24 x i8]* @.str.6 to i32))
  br label %77

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @kfree(i64 %50)
  %52 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %53 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %60 = call i32 @acpi_device_sleep_wake(%struct.acpi_device* %59, i32 0, i32 0, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load i32, i32* @ACPI_DB_INFO, align 4
  %65 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([34 x i8]* @.str.7 to i32))
  br label %66

66:                                               ; preds = %63, %48
  %67 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %68 = getelementptr inbounds [4 x %struct.acpi_device_id], [4 x %struct.acpi_device_id]* %7, i64 0, i64 0
  %69 = call i32 @acpi_match_device_ids(%struct.acpi_device* %67, %struct.acpi_device_id* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %73 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %44, %30
  %78 = load i32, i32* %3, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %83 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @ACPI_EXCEPTION(i32) #2

declare dso_local i32 @acpi_bus_extract_wakeup_device_power_package(%struct.acpi_device*, %union.acpi_object*) #2

declare dso_local i32 @kfree(i64) #2

declare dso_local i32 @acpi_device_sleep_wake(%struct.acpi_device*, i32, i32, i32) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
