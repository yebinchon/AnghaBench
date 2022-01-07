; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atif_verify_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atif_verify_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_atif = type { i32, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.atif_verify_interface = type { i32, i32, i32 }

@ATIF_FUNCTION_VERIFY_INTERFACE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ATIF buffer is too small: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ATIF version %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.radeon_atif*)* @radeon_atif_verify_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atif_verify_interface(i32 %0, %struct.radeon_atif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_atif*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %struct.atif_verify_interface, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.radeon_atif* %1, %struct.radeon_atif** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ATIF_FUNCTION_VERIFY_INTERFACE, align 4
  %12 = call %union.acpi_object* @radeon_atif_call(i32 %10, i32 %11, i32* null)
  store %union.acpi_object* %12, %union.acpi_object** %6, align 8
  %13 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %14 = icmp ne %union.acpi_object* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.atif_verify_interface* %7, i32 0, i32 12)
  %20 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %26, 12
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %55

33:                                               ; preds = %18
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @min(i32 12, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @memcpy(%struct.atif_verify_interface* %7, i64 %39, i64 %40)
  %42 = getelementptr inbounds %struct.atif_verify_interface, %struct.atif_verify_interface* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.radeon_atif*, %struct.radeon_atif** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_atif, %struct.radeon_atif* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.atif_verify_interface, %struct.atif_verify_interface* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @radeon_atif_parse_notification(i32* %46, i32 %48)
  %50 = load %struct.radeon_atif*, %struct.radeon_atif** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_atif, %struct.radeon_atif* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.atif_verify_interface, %struct.atif_verify_interface* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @radeon_atif_parse_functions(i32* %51, i32 %53)
  br label %55

55:                                               ; preds = %33, %28
  %56 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %57 = call i32 @kfree(%union.acpi_object* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %union.acpi_object* @radeon_atif_call(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.atif_verify_interface*, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.atif_verify_interface*, i64, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @radeon_atif_parse_notification(i32*, i32) #1

declare dso_local i32 @radeon_atif_parse_functions(i32*, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
