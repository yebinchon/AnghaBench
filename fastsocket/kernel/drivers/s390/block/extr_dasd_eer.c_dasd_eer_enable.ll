; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_ccw_req*, %struct.TYPE_2__* }
%struct.dasd_ccw_req = type { i32, i32, i32, i32, i32, i64, %struct.ccw1*, i32, %struct.dasd_device* }
%struct.ccw1 = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ECKD\00", align 1
@EPERM = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@SNSS_DATA_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@DASD_CQR_ALLOW_SLOCK = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_SNSS = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@dasd_eer_snss_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_eer_enable(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ccw1*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 1
  %9 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %10 = icmp ne %struct.dasd_ccw_req* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

12:                                               ; preds = %1
  %13 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %14 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %12
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %110

28:                                               ; preds = %17
  %29 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %30 = load i32, i32* @SNSS_DATA_SIZE, align 4
  %31 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %32 = call %struct.dasd_ccw_req* @dasd_kmalloc_request(i32 %29, i32 1, i32 %30, %struct.dasd_device* %31)
  store %struct.dasd_ccw_req* %32, %struct.dasd_ccw_req** %4, align 8
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %34 = call i64 @IS_ERR(%struct.dasd_ccw_req* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %110

39:                                               ; preds = %28
  %40 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %41 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %42 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %41, i32 0, i32 8
  store %struct.dasd_device* %40, %struct.dasd_device** %42, align 8
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 0
  store i32 255, i32* %44, align 8
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 10, %45
  %47 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %48 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %50 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %51 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %50, i32 0, i32 7
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  %53 = load i32, i32* @DASD_CQR_ALLOW_SLOCK, align 4
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 7
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %58 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %57, i32 0, i32 6
  %59 = load %struct.ccw1*, %struct.ccw1** %58, align 8
  store %struct.ccw1* %59, %struct.ccw1** %6, align 8
  %60 = load i32, i32* @DASD_ECKD_CCW_SNSS, align 4
  %61 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %62 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @SNSS_DATA_SIZE, align 4
  %64 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %65 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %67 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  %68 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %69 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %72 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = call i32 (...) @get_clock()
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %75 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @DASD_CQR_FILLED, align 4
  %77 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %78 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @dasd_eer_snss_cb, align 4
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %81 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %83 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @get_ccwdev_lock(i32 %84)
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_lock_irqsave(i32 %85, i64 %86)
  %88 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %89 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %88, i32 0, i32 1
  %90 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %89, align 8
  %91 = icmp ne %struct.dasd_ccw_req* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %39
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %94 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %95 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %94, i32 0, i32 1
  store %struct.dasd_ccw_req* %93, %struct.dasd_ccw_req** %95, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %4, align 8
  br label %96

96:                                               ; preds = %92, %39
  %97 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %98 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @get_ccwdev_lock(i32 %99)
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32 %100, i64 %101)
  %103 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %104 = icmp ne %struct.dasd_ccw_req* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %107 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %108 = call i32 @dasd_kfree_request(%struct.dasd_ccw_req* %106, %struct.dasd_device* %107)
  br label %109

109:                                              ; preds = %105, %96
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %36, %25, %11
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_kmalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_kfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
