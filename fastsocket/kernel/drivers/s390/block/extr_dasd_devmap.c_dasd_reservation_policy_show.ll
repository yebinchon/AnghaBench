; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_reservation_policy_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_reservation_policy_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_devmap = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ignore\0A\00", align 1
@dasd_devmap_lock = common dso_local global i32 0, align 4
@DASD_FEATURE_FAILONSLCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dasd_reservation_policy_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_reservation_policy_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dasd_devmap*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @dev_name(%struct.device* %9)
  %11 = call %struct.dasd_devmap* @dasd_find_busid(i32 %10)
  store %struct.dasd_devmap* %11, %struct.dasd_devmap** %7, align 8
  %12 = load %struct.dasd_devmap*, %struct.dasd_devmap** %7, align 8
  %13 = call i64 @IS_ERR(%struct.dasd_devmap* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  br label %37

19:                                               ; preds = %3
  %20 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %21 = load %struct.dasd_devmap*, %struct.dasd_devmap** %7, align 8
  %22 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DASD_FEATURE_FAILONSLCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i32 @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.dasd_devmap* @dasd_find_busid(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
