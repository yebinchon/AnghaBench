; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_rcd_cqr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_rcd_cqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32, i32, i32, i32, i32, i32, i32*, %struct.dasd_device*, %struct.dasd_device*, i32, %struct.ccw1* }
%struct.ccw1 = type { i32, i64, i64, i32 }

@DASD_ECKD_CCW_RCD = common dso_local global i32 0, align 4
@DASD_ECKD_RCD_DATA_SIZE = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_ccw_req*, i32*, i32)* @dasd_eckd_fill_rcd_cqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_fill_rcd_cqr(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_ccw_req*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccw1*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 229, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 241, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 75, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 240, i32* %17, align 4
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %19 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %18, i32 0, i32 10
  %20 = load %struct.ccw1*, %struct.ccw1** %19, align 8
  store %struct.ccw1* %20, %struct.ccw1** %9, align 8
  %21 = load i32, i32* @DASD_ECKD_CCW_RCD, align 4
  %22 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %23 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %25 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %29 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @DASD_ECKD_RCD_DATA_SIZE, align 4
  %31 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %32 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %35 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 8
  store %struct.dasd_device* %36, %struct.dasd_device** %38, align 8
  %39 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 7
  store %struct.dasd_device* %39, %struct.dasd_device** %41, align 8
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %43 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 10, %44
  %46 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %47 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %50 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %52 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %51, i32 0, i32 2
  store i32 256, i32* %52, align 8
  %53 = call i32 (...) @get_clock()
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @DASD_CQR_FILLED, align 4
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %58 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %60 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %61 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %60, i32 0, i32 3
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  ret void
}

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
