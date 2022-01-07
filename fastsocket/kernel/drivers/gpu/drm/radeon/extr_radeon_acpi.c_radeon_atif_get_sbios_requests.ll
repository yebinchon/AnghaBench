; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atif_get_sbios_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atif_get_sbios_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atif_sbios_requests = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SBIOS pending requests: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.atif_sbios_requests*)* @radeon_atif_get_sbios_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atif_get_sbios_requests(i32 %0, %struct.atif_sbios_requests* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.atif_sbios_requests*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.atif_sbios_requests* %1, %struct.atif_sbios_requests** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS, align 4
  %11 = call %union.acpi_object* @radeon_atif_call(i32 %9, i32 %10, i32* null)
  store %union.acpi_object* %11, %union.acpi_object** %6, align 8
  %12 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %13 = icmp ne %union.acpi_object* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %19 = bitcast %union.acpi_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 13
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %49

29:                                               ; preds = %17
  %30 = load %struct.atif_sbios_requests*, %struct.atif_sbios_requests** %5, align 8
  %31 = call i32 @memset(%struct.atif_sbios_requests* %30, i32 0, i32 4)
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @min(i32 4, i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.atif_sbios_requests*, %struct.atif_sbios_requests** %5, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memcpy(%struct.atif_sbios_requests* %34, i64 %38, i64 %39)
  %41 = load %struct.atif_sbios_requests*, %struct.atif_sbios_requests** %5, align 8
  %42 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.atif_sbios_requests*, %struct.atif_sbios_requests** %5, align 8
  %46 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hweight32(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %29, %26
  %50 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %51 = call i32 @kfree(%union.acpi_object* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %union.acpi_object* @radeon_atif_call(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.atif_sbios_requests*, i32, i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.atif_sbios_requests*, i64, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
