; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_check_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_check_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bus_ops = type { i64, i64 }
%struct.acpi_device = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_STA_DEVICE_PRESENT = common dso_local global i64 0, align 8
@ACPI_STA_DEVICE_FUNCTIONING = common dso_local global i64 0, align 8
@AE_CTRL_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_bus_check_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_check_add(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_bus_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.acpi_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.acpi_bus_ops*
  store %struct.acpi_bus_ops* %17, %struct.acpi_bus_ops** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @acpi_bus_type_and_status(i32 %18, i32* %11, i64* %12)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @AE_OK, align 4
  store i32 %23, i32* %5, align 4
  br label %86

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @ACPI_STA_DEVICE_PRESENT, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @ACPI_STA_DEVICE_FUNCTIONING, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %35, i32* %5, align 4
  br label %86

36:                                               ; preds = %29, %24
  store %struct.acpi_device* null, %struct.acpi_device** %13, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @acpi_bus_get_device(i32 %37, %struct.acpi_device** %13)
  %39 = load %struct.acpi_bus_ops*, %struct.acpi_bus_ops** %10, align 8
  %40 = getelementptr inbounds %struct.acpi_bus_ops, %struct.acpi_bus_ops* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %45 = icmp ne %struct.acpi_device* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.acpi_bus_ops*, %struct.acpi_bus_ops** %10, align 8
  %51 = call i32 @acpi_add_single_object(%struct.acpi_device** %13, i32 %47, i32 %48, i64 %49, %struct.acpi_bus_ops* %50)
  br label %52

52:                                               ; preds = %46, %43, %36
  %53 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %54 = icmp ne %struct.acpi_device* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %56, i32* %5, align 4
  br label %86

57:                                               ; preds = %52
  %58 = load %struct.acpi_bus_ops*, %struct.acpi_bus_ops** %10, align 8
  %59 = getelementptr inbounds %struct.acpi_bus_ops, %struct.acpi_bus_ops* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.acpi_bus_ops*, %struct.acpi_bus_ops** %10, align 8
  %64 = getelementptr inbounds %struct.acpi_bus_ops, %struct.acpi_bus_ops* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %69 = call i32 @acpi_start_single_object(%struct.acpi_device* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @ACPI_FAILURE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %74, i32* %5, align 4
  br label %86

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %62, %57
  %77 = load i8**, i8*** %9, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %82 = bitcast %struct.acpi_device* %81 to i8*
  %83 = load i8**, i8*** %9, align 8
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @AE_OK, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %73, %55, %34, %22
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @acpi_bus_type_and_status(i32, i32*, i64*) #1

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @acpi_add_single_object(%struct.acpi_device**, i32, i32, i64, %struct.acpi_bus_ops*) #1

declare dso_local i32 @acpi_start_single_object(%struct.acpi_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
