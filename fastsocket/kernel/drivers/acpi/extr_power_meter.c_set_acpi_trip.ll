; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_set_acpi_trip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_set_acpi_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_meter_resource = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PTP\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _PTP\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_power_meter_resource*)* @set_acpi_trip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_acpi_trip(%struct.acpi_power_meter_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_power_meter_resource*, align 8
  %4 = alloca [2 x %union.acpi_object], align 16
  %5 = alloca %struct.acpi_object_list, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_power_meter_resource* %0, %struct.acpi_power_meter_resource** %3, align 8
  %8 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %4, i64 0, i64 0
  %9 = bitcast %union.acpi_object* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %8, i64 1
  %14 = bitcast %union.acpi_object* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 1
  %20 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %4, i64 0, i64 0
  store %union.acpi_object* %20, %union.acpi_object** %19, align 8
  %21 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %74

35:                                               ; preds = %27
  %36 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %4, i64 0, i64 0
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 16
  %44 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %4, i64 0, i64 1
  %50 = bitcast %union.acpi_object* %49 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @acpi_evaluate_integer(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %5, i64* %6)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %35
  %62 = load i32, i32* @AE_INFO, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %35
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %70, %61, %34
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
