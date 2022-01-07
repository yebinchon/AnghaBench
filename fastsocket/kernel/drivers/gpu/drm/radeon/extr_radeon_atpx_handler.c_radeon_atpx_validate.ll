; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_atpx = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.atpx_px_params = type { i32, i32 }

@ATPX_FUNCTION_GET_PX_PARAMETERS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ATPX buffer is too small: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATPX_SEPARATE_MUX_FOR_I2C = common dso_local global i32 0, align 4
@ATPX_CRT1_RGB_SIGNAL_MUXED = common dso_local global i32 0, align 4
@ATPX_TV_SIGNAL_MUXED = common dso_local global i32 0, align 4
@ATPX_DFP_SIGNAL_MUXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_atpx*)* @radeon_atpx_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atpx_validate(%struct.radeon_atpx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_atpx*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.atpx_px_params, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_atpx* %0, %struct.radeon_atpx** %3, align 8
  %8 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %85

16:                                               ; preds = %1
  %17 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATPX_FUNCTION_GET_PX_PARAMETERS, align 4
  %21 = call %union.acpi_object* @radeon_atpx_call(i32 %19, i32 %20, i32* null)
  store %union.acpi_object* %21, %union.acpi_object** %4, align 8
  %22 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %23 = icmp ne %union.acpi_object* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %16
  %28 = call i32 @memset(%struct.atpx_px_params* %5, i32 0, i32 8)
  %29 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %35, 10
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %41 = call i32 @kfree(%union.acpi_object* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %86

44:                                               ; preds = %27
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @min(i32 8, i64 %45)
  store i64 %46, i64* %6, align 8
  %47 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @memcpy(%struct.atpx_px_params* %5, i64 %50, i64 %51)
  %53 = getelementptr inbounds %struct.atpx_px_params, %struct.atpx_px_params* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.atpx_px_params, %struct.atpx_px_params* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %54, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @ATPX_SEPARATE_MUX_FOR_I2C, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %44
  %63 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %44
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ATPX_CRT1_RGB_SIGNAL_MUXED, align 4
  %72 = load i32, i32* @ATPX_TV_SIGNAL_MUXED, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ATPX_DFP_SIGNAL_MUXED, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %70, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %69
  %83 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %84 = call i32 @kfree(%union.acpi_object* %83)
  br label %85

85:                                               ; preds = %82, %1
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %37, %24
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %union.acpi_object* @radeon_atpx_call(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.atpx_px_params*, i32, i32) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.atpx_px_params*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
