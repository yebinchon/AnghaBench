; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_ro_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_ro_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_devmap = type { i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@dasd_devmap_lock = common dso_local global i32 0, align 4
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_ro_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_ro_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_devmap*, align 8
  %11 = alloca %struct.dasd_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_ccwdev(%struct.device* %14)
  %16 = call %struct.dasd_devmap* @dasd_devmap_from_cdev(i32 %15)
  store %struct.dasd_devmap* %16, %struct.dasd_devmap** %10, align 8
  %17 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %18 = call i64 @IS_ERR(%struct.dasd_devmap* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %22 = call i64 @PTR_ERR(%struct.dasd_devmap* %21)
  store i64 %22, i64* %5, align 8
  br label %104

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @simple_strtoul(i8* %24, i8** %13, i32 0)
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = icmp ult i8* %27, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %23
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %104

38:                                               ; preds = %32
  %39 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %44 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %45 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %55

48:                                               ; preds = %38
  %49 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %52 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %57 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %56, i32 0, i32 1
  %58 = load %struct.dasd_device*, %struct.dasd_device** %57, align 8
  store %struct.dasd_device* %58, %struct.dasd_device** %11, align 8
  %59 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %60 = icmp ne %struct.dasd_device* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %63 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %66 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %71 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %72 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %69, %61
  %76 = phi i1 [ true, %61 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %55
  %79 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %80 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %81 = icmp ne %struct.dasd_device* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %84 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = icmp ne %struct.TYPE_2__* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %89 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  %96 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @set_disk_ro(i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %94, %87, %82, %78
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %102, %35, %20
  %105 = load i64, i64* %5, align 8
  ret i64 %105
}

declare dso_local %struct.dasd_devmap* @dasd_devmap_from_cdev(i32) #1

declare dso_local i32 @to_ccwdev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local i64 @PTR_ERR(%struct.dasd_devmap*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_disk_ro(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
