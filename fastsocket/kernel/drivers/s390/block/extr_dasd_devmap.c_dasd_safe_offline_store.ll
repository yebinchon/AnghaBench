; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_safe_offline_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_safe_offline_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i32 }

@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_safe_offline_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_safe_offline_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ccw_device*, align 8
  %10 = alloca %struct.dasd_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ccw_device* @to_ccwdev(%struct.device* %12)
  store %struct.ccw_device* %13, %struct.ccw_device** %9, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %15 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %14)
  store %struct.dasd_device* %15, %struct.dasd_device** %10, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.dasd_device* %20)
  store i32 %21, i32* %11, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %24 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %25 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %30 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %31 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %22
  %35 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %36 = call i32 @dasd_put_device(%struct.dasd_device* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %48

39:                                               ; preds = %28
  %40 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE, align 4
  %41 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %42 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  %45 = call i32 @dasd_put_device(%struct.dasd_device* %44)
  %46 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  %47 = call i32 @ccw_device_set_offline(%struct.ccw_device* %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %39, %34, %19
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  br label %56

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i64 [ %53, %51 ], [ %55, %54 ]
  %58 = trunc i64 %57 to i32
  ret i32 %58
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
