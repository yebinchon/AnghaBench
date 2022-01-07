; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_use_diag_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_use_diag_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dasd_devmap = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@dasd_devmap_lock = common dso_local global i32 0, align 4
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@DASD_FEATURE_USEDIAG = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dasd_use_diag_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dasd_use_diag_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dasd_devmap*, align 8
  %11 = alloca i64, align 8
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
  br label %75

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
  br label %75

38:                                               ; preds = %32
  %39 = call i32 @spin_lock(i32* @dasd_devmap_lock)
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %42 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %38
  %46 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %47 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @DASD_FEATURE_USEDIAG, align 4
  %57 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %58 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %68

61:                                               ; preds = %52
  %62 = load i32, i32* @DASD_FEATURE_USEDIAG, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.dasd_devmap*, %struct.dasd_devmap** %10, align 8
  %65 = getelementptr inbounds %struct.dasd_devmap, %struct.dasd_devmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %55
  br label %72

69:                                               ; preds = %45, %38
  %70 = load i64, i64* @EPERM, align 8
  %71 = sub i64 0, %70
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = call i32 @spin_unlock(i32* @dasd_devmap_lock)
  %74 = load i64, i64* %11, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %72, %35, %20
  %76 = load i64, i64* %5, align 8
  ret i64 %76
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
