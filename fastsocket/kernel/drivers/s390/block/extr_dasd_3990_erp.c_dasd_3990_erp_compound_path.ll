; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, {}*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DASD_SENSE_BIT_3 = common dso_local global i8 0, align 1
@DASD_CQR_FAILED = common dso_local global i64 0, align 8
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@DASD_CQR_NEED_ERP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_erp_compound_path(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 25
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @DASD_SENSE_BIT_3, align 1
  %10 = sext i8 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %15 = call i32 @dasd_3990_erp_alternate_path(%struct.dasd_ccw_req* %14)
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DASD_CQR_FAILED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %13
  %22 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %24 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %23, i32 0, i32 4
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %29 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %35 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @DASD_CQR_NEED_ERP, align 8
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %27, %21, %13
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %42 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %41, i32 0, i32 1
  %43 = bitcast {}** %42 to void (%struct.dasd_ccw_req*, i8*)**
  store void (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_path, void (%struct.dasd_ccw_req*, i8*)** %43, align 8
  ret void
}

declare dso_local i32 @dasd_3990_erp_alternate_path(%struct.dasd_ccw_req*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
