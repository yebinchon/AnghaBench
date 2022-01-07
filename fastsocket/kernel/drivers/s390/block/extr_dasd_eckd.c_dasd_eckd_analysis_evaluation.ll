; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_analysis_evaluation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_analysis_evaluation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32 }

@DASD_CQR_DONE = common dso_local global i64 0, align 8
@INIT_CQR_OK = common dso_local global i32 0, align 4
@DASD_CQR_NEED_ERP = common dso_local global i64 0, align 8
@DASD_CQR_FAILED = common dso_local global i64 0, align 8
@SNS1_NO_REC_FOUND = common dso_local global i8 0, align 1
@INIT_CQR_UNFORMATTED = common dso_local global i32 0, align 4
@INIT_CQR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @dasd_eckd_analysis_evaluation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_analysis_evaluation(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DASD_CQR_DONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @INIT_CQR_OK, align 4
  store i32 %11, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DASD_CQR_NEED_ERP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DASD_CQR_FAILED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18, %12
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 1
  %27 = call i8* @dasd_get_sense(i32* %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @SNS1_NO_REC_FOUND, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @INIT_CQR_UNFORMATTED, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %30, %24
  %42 = load i32, i32* @INIT_CQR_ERROR, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %18
  %44 = load i32, i32* @INIT_CQR_ERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i8* @dasd_get_sense(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
