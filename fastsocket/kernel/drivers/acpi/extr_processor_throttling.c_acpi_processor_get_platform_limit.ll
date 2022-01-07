; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_platform_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_platform_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ignore_tpc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"_TPC\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _TPC\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_platform_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_platform_limit(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = icmp ne %struct.acpi_processor* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i64, i64* @ignore_tpc, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %35

15:                                               ; preds = %11
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @acpi_evaluate_integer(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ACPI_FAILURE(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @AE_NOT_FOUND, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @AE_INFO, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %31, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
