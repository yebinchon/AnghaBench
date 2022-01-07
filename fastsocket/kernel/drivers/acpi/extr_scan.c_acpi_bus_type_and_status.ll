; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_type_and_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_type_and_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODEV = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_PROCESSOR = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_THERMAL = common dso_local global i32 0, align 4
@ACPI_STA_DEFAULT = common dso_local global i64 0, align 8
@ACPI_BUS_TYPE_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64*)* @acpi_bus_type_and_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_type_and_status(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @acpi_get_type(i32 %10, i32* %9)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %56 [
    i32 132, label %20
    i32 131, label %20
    i32 129, label %33
    i32 128, label %46
    i32 130, label %51
  ]

20:                                               ; preds = %18, %18
  %21 = load i32, i32* @ACPI_BUS_TYPE_DEVICE, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i64*, i64** %7, align 8
  %25 = call i32 @acpi_bus_get_status_handle(i32 %23, i64* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %60

32:                                               ; preds = %20
  br label %59

33:                                               ; preds = %18
  %34 = load i32, i32* @ACPI_BUS_TYPE_PROCESSOR, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i64*, i64** %7, align 8
  %38 = call i32 @acpi_bus_get_status_handle(i32 %36, i64* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %60

45:                                               ; preds = %33
  br label %59

46:                                               ; preds = %18
  %47 = load i32, i32* @ACPI_BUS_TYPE_THERMAL, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* @ACPI_STA_DEFAULT, align 8
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  br label %59

51:                                               ; preds = %18
  %52 = load i32, i32* @ACPI_BUS_TYPE_POWER, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i64, i64* @ACPI_STA_DEFAULT, align 8
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  br label %59

56:                                               ; preds = %18
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %51, %46, %45, %32
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %42, %29, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @acpi_get_type(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_bus_get_status_handle(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
