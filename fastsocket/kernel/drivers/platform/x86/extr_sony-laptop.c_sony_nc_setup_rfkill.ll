; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_nc_setup_rfkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_nc_setup_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.acpi_device = type { i32 }

@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sony-wifi\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"sony-bluetooth\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sony-wwan\00", align 1
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"sony-wimax\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sony_rfkill_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sony_rfkill_devices = common dso_local global %struct.rfkill** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @sony_nc_setup_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_setup_rfkill(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfkill*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %21 [
    i32 130, label %13
    i32 131, label %15
    i32 128, label %17
    i32 129, label %19
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  store i32 %14, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  store i32 %16, i32* %8, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  store i32 %18, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  store i32 %20, i32* %8, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %19, %17, %15, %13
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call %struct.rfkill* @rfkill_alloc(i8* %25, i32* %27, i32 %28, i32* @sony_rfkill_ops, i8* %31)
  store %struct.rfkill* %32, %struct.rfkill** %7, align 8
  %33 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %34 = icmp ne %struct.rfkill* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %24
  %39 = call i32 @sony_call_snc_handle(i32 292, i32 512, i32* %10)
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @rfkill_set_hw_state(%struct.rfkill* %45, i32 %46)
  %48 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %49 = call i32 @rfkill_register(%struct.rfkill* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %54 = call i32 @rfkill_destroy(%struct.rfkill* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %38
  %57 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %58 = load %struct.rfkill**, %struct.rfkill*** @sony_rfkill_devices, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.rfkill*, %struct.rfkill** %58, i64 %60
  store %struct.rfkill* %57, %struct.rfkill** %61, align 8
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %52, %35, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @sony_call_snc_handle(i32, i32, i32*) #1

declare dso_local i32 @rfkill_set_hw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
