; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, {}*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DASD_CQR_FAILED = common dso_local global i64 0, align 8
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_action_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %3 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %4 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %3, i32 0, i32 2
  %5 = bitcast {}** %4 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)**
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_action_1, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)** %5, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %7 = call i32 @dasd_3990_erp_alternate_path(%struct.dasd_ccw_req* %6)
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DASD_CQR_FAILED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %15, i32 0, i32 5
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @DASD_CQR_FILLED, align 8
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %24 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %23, i32 0, i32 1
  store i32 10, i32* %24, align 8
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %32 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %34 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %33, i32 0, i32 2
  %35 = bitcast {}** %34 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)**
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_action_1_sec, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)** %35, align 8
  br label %36

36:                                               ; preds = %19, %13, %1
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %37
}

declare dso_local i32 @dasd_3990_erp_alternate_path(%struct.dasd_ccw_req*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_1_sec(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
