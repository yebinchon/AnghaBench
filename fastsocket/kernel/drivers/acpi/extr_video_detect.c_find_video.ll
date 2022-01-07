; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_find_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_find_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_device_id = type { i8*, i32 }

@ACPI_VIDEO_HID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @find_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_video(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.acpi_device*, align 8
  %13 = alloca [2 x %struct.acpi_device_id], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %10, align 8
  %16 = getelementptr inbounds [2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* %13, i64 0, i64 0
  %17 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %16, i32 0, i32 0
  %18 = load i8*, i8** @ACPI_VIDEO_HID, align 8
  store i8* %18, i8** %17, align 16
  %19 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %16, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %16, i64 1
  %21 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %20, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @acpi_bus_get_device(i32 %23, %struct.acpi_device** %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @AE_OK, align 4
  store i32 %27, i32* %5, align 4
  br label %50

28:                                               ; preds = %4
  %29 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %30 = getelementptr inbounds [2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* %13, i64 0, i64 0
  %31 = call i32 @acpi_match_device_ids(%struct.acpi_device* %29, %struct.acpi_device_id* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.pci_dev* @acpi_get_pci_dev(i32 %34)
  store %struct.pci_dev* %35, %struct.pci_dev** %11, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %37 = icmp ne %struct.pci_dev* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @AE_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %50

40:                                               ; preds = %33
  %41 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %42 = call i32 @pci_dev_put(%struct.pci_dev* %41)
  %43 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %44 = call i64 @acpi_is_video_device(%struct.acpi_device* %43)
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %44
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %40, %28
  %49 = load i32, i32* @AE_OK, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %38, %26
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #1

declare dso_local %struct.pci_dev* @acpi_get_pci_dev(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @acpi_is_video_device(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
