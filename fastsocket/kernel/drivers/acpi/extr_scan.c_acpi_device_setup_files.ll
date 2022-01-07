; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_setup_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_setup_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i64 }

@dev_attr_path = common dso_local global i32 0, align 4
@dev_attr_hid = common dso_local global i32 0, align 4
@dev_attr_modalias = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@dev_attr_sun = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@dev_attr_eject = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_device_setup_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_setup_files(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 0
  %14 = call i32 @device_create_file(i32* %13, i32* @dev_attr_path)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %62

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = call i32 @device_create_file(i32* %21, i32* @dev_attr_hid)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %62

26:                                               ; preds = %19
  %27 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 0
  %29 = call i32 @device_create_file(i32* %28, i32* @dev_attr_modalias)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %62

33:                                               ; preds = %26
  %34 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @acpi_evaluate_integer(i64 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @ACPI_SUCCESS(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = call i32 @device_create_file(i32* %43, i32* @dev_attr_sun)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %62

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @acpi_get_handle(i64 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @ACPI_SUCCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 0
  %60 = call i32 @device_create_file(i32* %59, i32* @dev_attr_eject)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %49
  br label %62

62:                                               ; preds = %61, %47, %32, %25, %17
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @acpi_evaluate_integer(i64, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
