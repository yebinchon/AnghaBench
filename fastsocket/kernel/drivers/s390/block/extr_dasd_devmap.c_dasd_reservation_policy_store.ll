; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_reservation_policy_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_reservation_policy_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_devmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dasd_devmap_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@DASD_FEATURE_FAILONSLCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_reservation_policy_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_reservation_policy_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_devmap*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call i32 @to_ccwdev(%struct.device* %12)
  %14 = call %struct.dasd_devmap* @dasd_devmap_from_cdev(i32 %13)
  store %struct.dasd_devmap* %14, %struct.dasd_devmap** %10, align 8
  %15 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %16 = call i64 @IS_ERR(%struct.dasd_devmap* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.dasd_devmap* %19)
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %22 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @sysfs_streq(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @DASD_FEATURE_FAILONSLCK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %30 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %47

33:                                               ; preds = %21
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @sysfs_streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @DASD_FEATURE_FAILONSLCK, align 4
  %39 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %40 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %49 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %54 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %57 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %47
  %61 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %64, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.dasd_devmap* @dasd_devmap_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
