; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_ff_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_ff_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_devmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@dasd_devmap_lock = common dso_local global i32 0, align 4
@DASD_FEATURE_FAILFAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_ff_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_ff_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_devmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_ccwdev(%struct.device* %13)
  %15 = call %struct.dasd_devmap* @dasd_devmap_from_cdev(i32 %14)
  store %struct.dasd_devmap* %15, %struct.dasd_devmap** %10, align 8
  %16 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_devmap* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %21 = call i64 @PTR_ERR(%struct.dasd_devmap* %20)
  store i64 %21, i64* %5, align 8
  br label %70

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @simple_strtoul(i8* %23, i8** %12, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = icmp ult i8* %26, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %22
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %70

37:                                               ; preds = %31
  %38 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @DASD_FEATURE_FAILFAST, align 4
  %43 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %44 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %54

47:                                               ; preds = %37
  %48 = load i32, i32* @DASD_FEATURE_FAILFAST, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %51 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %56 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %61 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %64 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %67, %34, %19
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.dasd_devmap* @dasd_devmap_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i64 @PTR_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
