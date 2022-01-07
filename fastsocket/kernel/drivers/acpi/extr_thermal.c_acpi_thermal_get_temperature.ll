; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_get_temperature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Temperature is %lu dK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_thermal*)* @acpi_thermal_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_get_temperature(%struct.acpi_thermal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_thermal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %3, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %8 = icmp ne %struct.acpi_thermal* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @acpi_evaluate_integer(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %12
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @ACPI_DB_INFO, align 4
  %35 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %27, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
