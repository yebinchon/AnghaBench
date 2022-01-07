; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_conf_immediately.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_conf_immediately.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32, i32, i32 }
%struct.ciw = type { i64 }

@CIW_TYPE_RCD = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RCD = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@read_conf_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_ccw_req*, i32*, i32)* @dasd_eckd_read_conf_immediately to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_read_conf_immediately(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ciw*, align 8
  %11 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %6, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CIW_TYPE_RCD, align 4
  %16 = call %struct.ciw* @ccw_device_get_ciw(i32 %14, i32 %15)
  store %struct.ciw* %16, %struct.ciw** %10, align 8
  %17 = load %struct.ciw*, %struct.ciw** %10, align 8
  %18 = icmp ne %struct.ciw* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.ciw*, %struct.ciw** %10, align 8
  %21 = getelementptr inbounds %struct.ciw, %struct.ciw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DASD_ECKD_CCW_RCD, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %46

28:                                               ; preds = %19
  %29 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dasd_eckd_fill_rcd_cqr(%struct.dasd_device* %29, %struct.dasd_ccw_req* %30, i32* %31, i32 %32)
  %34 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %36 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %35, i32 0, i32 2
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %39 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %38, i32 0, i32 0
  store i32 5, i32* %39, align 4
  %40 = load i32, i32* @read_conf_cb, align 4
  %41 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %42 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %44 = call i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %28, %25
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.ciw* @ccw_device_get_ciw(i32, i32) #1

declare dso_local i32 @dasd_eckd_fill_rcd_cqr(%struct.dasd_device*, %struct.dasd_ccw_req*, i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
