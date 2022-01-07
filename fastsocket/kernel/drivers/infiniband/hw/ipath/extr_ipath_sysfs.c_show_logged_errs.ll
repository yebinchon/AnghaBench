; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_show_logged_errs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_show_logged_errs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32* }

@ENXIO = common dso_local global i32 0, align 4
@IPATH_EEP_LOG_CNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_logged_errs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_logged_errs(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipath_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %11)
  store %struct.ipath_devdata* %12, %struct.ipath_devdata** %8, align 8
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %14 = call i64 @ipath_update_eeprom_log(%struct.ipath_devdata* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %52, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IPATH_EEP_LOG_CNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IPATH_EEP_LOG_CNT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 10, i32 32
  %46 = trunc i32 %45 to i8
  %47 = call i64 @scnprintf(i8* %28, i64 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39, i8 signext %46)
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %24
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @ipath_update_eeprom_log(%struct.ipath_devdata*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
