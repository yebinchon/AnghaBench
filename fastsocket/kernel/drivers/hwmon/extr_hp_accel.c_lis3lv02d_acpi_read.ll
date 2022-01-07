; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_hp_accel.c_lis3lv02d_acpi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_hp_accel.c_lis3lv02d_acpi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ALRD\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3lv02d_acpi_read(%struct.lis3lv02d* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.lis3lv02d*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %union.acpi_object, align 4
  %9 = alloca %struct.acpi_object_list, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %12 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %13 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %12, i32 0, i32 0
  %14 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  store %struct.acpi_device* %14, %struct.acpi_device** %7, align 8
  %15 = bitcast %union.acpi_object* %8 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 1
  store %union.acpi_object* %8, %union.acpi_object** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = bitcast %union.acpi_object* %8 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @acpi_evaluate_integer(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %9, i64* %10)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @AE_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 0, %35 ]
  ret i32 %37
}

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
