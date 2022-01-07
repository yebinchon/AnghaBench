; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_hotkey_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_hotkey_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.pcc_acpi = type { i32 }

@AE_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sticky mode restore: %d\0A\00", align 1
@SINF_STICKY_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_pcc_hotkey_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcc_hotkey_resume(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.pcc_acpi*, align 8
  %5 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.pcc_acpi* %7, %struct.pcc_acpi** %4, align 8
  %8 = load i64, i64* @AE_OK, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = icmp eq %struct.acpi_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %13 = icmp eq %struct.pcc_acpi* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %11
  %18 = load i32, i32* @ACPI_DB_ERROR, align 4
  %19 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %20 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 %21)
  %23 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %24 = load i32, i32* @SINF_STICKY_KEY, align 4
  %25 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %26 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @acpi_pcc_write_sset(%struct.pcc_acpi* %23, i32 %24, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @AE_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ 0, %32 ], [ %35, %33 ]
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @acpi_pcc_write_sset(%struct.pcc_acpi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
