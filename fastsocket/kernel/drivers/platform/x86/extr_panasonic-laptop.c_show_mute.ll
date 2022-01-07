; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_show_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_show_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_device = type { i32 }
%struct.pcc_acpi = type { i32* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@SINF_MUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_mute(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %struct.pcc_acpi*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.acpi_device* @to_acpi_device(%struct.device* %10)
  store %struct.acpi_device* %11, %struct.acpi_device** %8, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %13 = call %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device* %12)
  store %struct.pcc_acpi* %13, %struct.pcc_acpi** %9, align 8
  %14 = load %struct.pcc_acpi*, %struct.pcc_acpi** %9, align 8
  %15 = load %struct.pcc_acpi*, %struct.pcc_acpi** %9, align 8
  %16 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi* %14, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load %struct.pcc_acpi*, %struct.pcc_acpi** %9, align 8
  %27 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @SINF_MUTE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
