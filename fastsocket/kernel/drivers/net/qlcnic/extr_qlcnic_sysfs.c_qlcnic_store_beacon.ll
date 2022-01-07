; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_store_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_store_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"LED test not supported in non privileged mode\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qlcnic_store_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_store_beacon(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.qlcnic_adapter* @dev_get_drvdata(%struct.device* %12)
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %28 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @qlcnic_82xx_store_beacon(%struct.qlcnic_adapter* %31, i8* %32, i64 %33)
  store i32 %34, i32* %11, align 4
  br label %48

35:                                               ; preds = %26
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %37 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @qlcnic_83xx_store_beacon(%struct.qlcnic_adapter* %40, i8* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %44, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.qlcnic_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_82xx_store_beacon(%struct.qlcnic_adapter*, i8*, i64) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_store_beacon(%struct.qlcnic_adapter*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
