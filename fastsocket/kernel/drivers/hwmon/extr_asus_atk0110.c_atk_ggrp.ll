; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_ggrp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_ggrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i64 }
%struct.atk_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"GGRP[%#x] ACPI exception: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"GGRP[%#x] package is too small\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (%struct.atk_data*, i32)* @atk_ggrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @atk_ggrp(%struct.atk_data* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %struct.atk_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_object_list, align 8
  %10 = alloca %union.acpi_object, align 8
  %11 = alloca %union.acpi_object*, align 8
  store %struct.atk_data* %0, %struct.atk_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %13 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %17 = bitcast %union.acpi_object* %10 to i64*
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = bitcast %union.acpi_object* %10 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 1
  store %union.acpi_object* %10, %union.acpi_object** %22, align 8
  %23 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %24 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %26 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @acpi_evaluate_object(i32 %27, i32* null, %struct.acpi_object_list* %9, %struct.acpi_buffer* %7)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @AE_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @acpi_format_exception(i64 %35)
  %37 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %union.acpi_object* @ERR_PTR(i32 %39)
  store %union.acpi_object* %40, %union.acpi_object** %3, align 8
  br label %72

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %43 = load %union.acpi_object*, %union.acpi_object** %42, align 8
  store %union.acpi_object* %43, %union.acpi_object** %11, align 8
  %44 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %45 = bitcast %union.acpi_object* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %51 = call i32 @ACPI_FREE(%union.acpi_object* %50)
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %union.acpi_object* @ERR_PTR(i32 %53)
  store %union.acpi_object* %54, %union.acpi_object** %3, align 8
  br label %72

55:                                               ; preds = %41
  %56 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_6__*
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %66 = call i32 @ACPI_FREE(%union.acpi_object* %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %union.acpi_object* @ERR_PTR(i32 %68)
  store %union.acpi_object* %69, %union.acpi_object** %3, align 8
  br label %72

70:                                               ; preds = %55
  %71 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  store %union.acpi_object* %71, %union.acpi_object** %3, align 8
  br label %72

72:                                               ; preds = %70, %61, %49, %32
  %73 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  ret %union.acpi_object* %73
}

declare dso_local i64 @acpi_evaluate_object(i32, i32*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @acpi_format_exception(i64) #1

declare dso_local %union.acpi_object* @ERR_PTR(i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
