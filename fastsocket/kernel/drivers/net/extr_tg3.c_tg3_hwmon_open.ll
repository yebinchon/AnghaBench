; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_hwmon_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_hwmon_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32*, %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tg3_ocir = type { i64, i64 }

@TG3_SD_NUM_RECS = common dso_local global i32 0, align 4
@tg3_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot create sysfs group, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot register hwmon device, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_hwmon_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_hwmon_open(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.tg3*, %struct.tg3** %2, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load i32, i32* @TG3_SD_NUM_RECS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.tg3_ocir, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.tg3*, %struct.tg3** %2, align 8
  %18 = call i32 @tg3_sd_scan_scratchpad(%struct.tg3* %17, %struct.tg3_ocir* %16)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %46, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @TG3_SD_NUM_RECS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tg3_ocir, %struct.tg3_ocir* %16, i64 %25
  %27 = getelementptr inbounds %struct.tg3_ocir, %struct.tg3_ocir* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 16
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %46

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tg3_ocir, %struct.tg3_ocir* %16, i64 %33
  %35 = getelementptr inbounds %struct.tg3_ocir, %struct.tg3_ocir* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.tg3_ocir, %struct.tg3_ocir* %16, i64 %40
  %42 = getelementptr inbounds %struct.tg3_ocir, %struct.tg3_ocir* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 16
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %31, %30
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %86

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @sysfs_create_group(i32* %56, i32* @tg3_group)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = call i32 @dev_err(%struct.TYPE_3__* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %86

64:                                               ; preds = %53
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32* @hwmon_device_register(%struct.TYPE_3__* %66)
  %68 = load %struct.tg3*, %struct.tg3** %2, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.tg3*, %struct.tg3** %2, align 8
  %71 = getelementptr inbounds %struct.tg3, %struct.tg3* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %64
  %76 = load %struct.tg3*, %struct.tg3** %2, align 8
  %77 = getelementptr inbounds %struct.tg3, %struct.tg3* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = call i32 @dev_err(%struct.TYPE_3__* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = call i32 @sysfs_remove_group(i32* %83, i32* @tg3_group)
  br label %85

85:                                               ; preds = %75, %64
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %60, %52
  %87 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %90 [
    i32 0, label %89
    i32 1, label %89
  ]

89:                                               ; preds = %86, %86
  ret void

90:                                               ; preds = %86
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tg3_sd_scan_scratchpad(%struct.tg3*, %struct.tg3_ocir*) #2

declare dso_local i32 @sysfs_create_group(i32*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #2

declare dso_local i32* @hwmon_device_register(%struct.TYPE_3__*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
