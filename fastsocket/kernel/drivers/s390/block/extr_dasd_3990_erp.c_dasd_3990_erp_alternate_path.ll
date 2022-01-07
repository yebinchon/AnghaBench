; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_alternate_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_alternate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, %struct.TYPE_12__, %struct.dasd_device* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.dasd_device = type { %struct.TYPE_13__*, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"try alternate lpm=%x (lpum=%x / opm=%x)\00", align 1
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"The DASD cannot be reached on any path (lpum=%x/opm=%x)\0A\00", align 1
@DASD_CQR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*)* @dasd_3990_erp_alternate_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_erp_alternate_path(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 4
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %3, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = call i32 @get_ccwdev_lock(%struct.TYPE_13__* %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = call i32 @ccw_device_get_path_mask(%struct.TYPE_13__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = call i32 @get_ccwdev_lock(%struct.TYPE_13__* %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32 %22, i64 %23)
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %1
  %30 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %31 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %35 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %33, %41
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %58

45:                                               ; preds = %1
  %46 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %47 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %45, %29
  %59 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %60 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %58
  %66 = load i32, i32* @DBF_WARNING, align 4
  %67 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %68 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %69 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %72 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @DBF_DEV_EVENT(i32 %66, %struct.dasd_device* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %77, i32 %78)
  %80 = load i32, i32* @DASD_CQR_FILLED, align 4
  %81 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %82 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %84 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %83, i32 0, i32 1
  store i32 10, i32* %84, align 4
  br label %102

85:                                               ; preds = %58
  %86 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %87 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %91 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* @DASD_CQR_FAILED, align 4
  %100 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %101 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %85, %65
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @ccw_device_get_path_mask(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
