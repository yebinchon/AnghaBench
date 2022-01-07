; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.dasd_ccw_req, %struct.dasd_ccw_req }
%struct.dasd_ccw_req = type { i32, i32, i32, %struct.dasd_device*, i32, i32, i32, %struct.dasd_device*, i32*, i64, i32, %struct.dasd_ccw_req*, i32 }
%struct.dasd_device = type { i32 }
%struct.ccw1 = type { i32, i32, i32, %struct.dasd_device*, i32, i32, i32, %struct.dasd_device*, i32*, i64, i32, %struct.ccw1*, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@dasd_reserve_mutex = common dso_local global i32 0, align 4
@dasd_reserve_req = common dso_local global %struct.TYPE_2__* null, align 8
@DASD_ECKD_CCW_RESERVE = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_FAILFAST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@DASD_FLAG_IS_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_reserve(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %8 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EACCES, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %110

14:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %15, i32 1, i32 32, %struct.dasd_device* %16)
  store %struct.dasd_ccw_req* %17, %struct.dasd_ccw_req** %4, align 8
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %19 = call i64 @IS_ERR(%struct.dasd_ccw_req* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = call i32 @mutex_lock(i32* @dasd_reserve_mutex)
  store i32 1, i32* %7, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dasd_reserve_req, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store %struct.dasd_ccw_req* %24, %struct.dasd_ccw_req** %4, align 8
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %26 = call i32 @memset(%struct.dasd_ccw_req* %25, i32 0, i32 88)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dasd_reserve_req, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @memset(%struct.dasd_ccw_req* %28, i32 0, i32 88)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dasd_reserve_req, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 11
  store %struct.dasd_ccw_req* %31, %struct.dasd_ccw_req** %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dasd_reserve_req, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %37 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %36, i32 0, i32 8
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %39 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %40 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %21, %14
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %43 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %42, i32 0, i32 11
  %44 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %43, align 8
  %45 = bitcast %struct.dasd_ccw_req* %44 to %struct.ccw1*
  store %struct.ccw1* %45, %struct.ccw1** %6, align 8
  %46 = load i32, i32* @DASD_ECKD_CCW_RESERVE, align 4
  %47 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %48 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @CCW_FLAG_SLI, align 4
  %50 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %51 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %55 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %54, i32 0, i32 0
  store i32 32, i32* %55, align 8
  %56 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %57 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %56, i32 0, i32 8
  %58 = load i32*, i32** %57, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %61 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %60, i32 0, i32 9
  store i64 %59, i64* %61, align 8
  %62 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %63 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %64 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %63, i32 0, i32 7
  store %struct.dasd_device* %62, %struct.dasd_device** %64, align 8
  %65 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %67 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %66, i32 0, i32 3
  store %struct.dasd_device* %65, %struct.dasd_device** %67, align 8
  %68 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %70 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %69, i32 0, i32 6
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = load i32, i32* @DASD_CQR_FLAGS_FAILFAST, align 4
  %73 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %74 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %73, i32 0, i32 6
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %77 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %76, i32 0, i32 1
  store i32 2, i32* %77, align 4
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 2, %78
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %81 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = call i32 (...) @get_clock()
  %83 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %84 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @DASD_CQR_FILLED, align 4
  %86 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %87 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %89 = call i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %41
  %93 = load i32, i32* @DASD_FLAG_IS_RESERVED, align 4
  %94 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %95 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %94, i32 0, i32 0
  %96 = call i32 @set_bit(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %92, %41
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @mutex_unlock(i32* @dasd_reserve_mutex)
  br label %108

102:                                              ; preds = %97
  %103 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %104 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %105 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %104, i32 0, i32 3
  %106 = load %struct.dasd_device*, %struct.dasd_device** %105, align 8
  %107 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %103, %struct.dasd_device* %106)
  br label %108

108:                                              ; preds = %102, %100
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %11
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.dasd_ccw_req*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
