; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_register_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_register_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }

@GET_AUX0 = common dso_local global i32 0, align 4
@SET_AUX0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"aux0\00", align 1
@aux0_show = common dso_local global i32 0, align 4
@aux0_store = common dso_local global i32* null, align 8
@AE_ERROR = common dso_local global i64 0, align 8
@GET_AUX1 = common dso_local global i32 0, align 4
@SET_AUX1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"aux1\00", align 1
@aux1_show = common dso_local global i32 0, align 4
@aux1_store = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"bios_enabled\00", align 1
@bios_enabled_show = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*, i8**)* @intel_menlow_register_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_menlow_register_sensor(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.thermal_zone_device*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = bitcast %struct.thermal_zone_device** %12 to i8**
  %16 = call i32 @acpi_bus_get_private_data(i32 %14, i8** %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %93

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GET_AUX0, align 4
  %23 = call i64 @acpi_get_handle(i32 %21, i32 %22, i32* %11)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @ACPI_FAILURE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %85

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SET_AUX0, align 4
  %31 = call i64 @acpi_get_handle(i32 %29, i32 %30, i32* %11)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @ACPI_FAILURE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %85

36:                                               ; preds = %28
  %37 = load i32, i32* @aux0_show, align 4
  %38 = load i32*, i32** @aux0_store, align 8
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %12, align 8
  %40 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @intel_menlow_add_one_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 420, i32 %37, i32* %38, i32* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* @AE_ERROR, align 8
  store i64 %46, i64* %5, align 8
  br label %93

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @GET_AUX1, align 4
  %50 = call i64 @acpi_get_handle(i32 %48, i32 %49, i32* %11)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @ACPI_FAILURE(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %85

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SET_AUX1, align 4
  %58 = call i64 @acpi_get_handle(i32 %56, i32 %57, i32* %11)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @ACPI_FAILURE(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %85

63:                                               ; preds = %55
  %64 = load i32, i32* @aux1_show, align 4
  %65 = load i32*, i32** @aux1_store, align 8
  %66 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %12, align 8
  %67 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @intel_menlow_add_one_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 420, i32 %64, i32* %65, i32* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i64, i64* @AE_ERROR, align 8
  store i64 %73, i64* %5, align 8
  br label %93

74:                                               ; preds = %63
  %75 = load i32, i32* @bios_enabled_show, align 4
  %76 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %12, align 8
  %77 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %76, i32 0, i32 0
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @intel_menlow_add_one_attribute(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %75, i32* null, i32* %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* @AE_ERROR, align 8
  store i64 %83, i64* %5, align 8
  br label %93

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %62, %54, %35, %27
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @AE_NOT_FOUND, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* @AE_OK, align 8
  store i64 %90, i64* %5, align 8
  br label %93

91:                                               ; preds = %85
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %91, %89, %82, %72, %45, %19
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local i32 @acpi_bus_get_private_data(i32, i8**) #1

declare dso_local i64 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @intel_menlow_add_one_attribute(i8*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
