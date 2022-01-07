; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_diag.c_dasd_start_diag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_diag.c_dasd_start_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, i32, i8*, i32, i8*, i64, %struct.dasd_device* }
%struct.dasd_device = type { i64 }
%struct.dasd_diag_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_diag_req = type { i32, i32 }

@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DIAG start_IO: request %p - no retry left)\00", align 1
@DASD_CQR_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DASD_DIAG_RWFLAG_ASYNC = common dso_local global i32 0, align 4
@DASD_DIAG_FLAGA_DEFAULT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RW_BIO = common dso_local global i32 0, align 4
@DASD_CQR_SUCCESS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DASD_CQR_IN_IO = common dso_local global i32 0, align 4
@DASD_CQR_QUEUED = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dia250 returned rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @dasd_start_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_start_diag(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_diag_private*, align 8
  %6 = alloca %struct.dasd_diag_req*, align 8
  %7 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 7
  %10 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  store %struct.dasd_device* %10, %struct.dasd_device** %4, align 8
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @DBF_ERR, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %19 = call i32 (i32, %struct.dasd_device*, i8*, ...) @DBF_DEV_EVENT(i32 %16, %struct.dasd_device* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.dasd_ccw_req* %18)
  %20 = load i32, i32* @DASD_CQR_ERROR, align 4
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %114

25:                                               ; preds = %1
  %26 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.dasd_diag_private*
  store %struct.dasd_diag_private* %29, %struct.dasd_diag_private** %5, align 8
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %31 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.dasd_diag_req*
  store %struct.dasd_diag_req* %33, %struct.dasd_diag_req** %6, align 8
  %34 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %35 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %39 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 8
  %41 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %42 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @DASD_DIAG_RWFLAG_ASYNC, align 4
  %45 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %46 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load %struct.dasd_diag_req*, %struct.dasd_diag_req** %6, align 8
  %49 = getelementptr inbounds %struct.dasd_diag_req, %struct.dasd_diag_req* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %52 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 8
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %55 = ptrtoint %struct.dasd_ccw_req* %54 to i64
  %56 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %57 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.dasd_diag_req*, %struct.dasd_diag_req** %6, align 8
  %60 = getelementptr inbounds %struct.dasd_diag_req, %struct.dasd_diag_req* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %63 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @DASD_DIAG_FLAGA_DEFAULT, align 4
  %66 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %67 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = call i8* (...) @get_clock()
  %70 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %71 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @jiffies, align 4
  %73 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %74 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %76 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %5, align 8
  %80 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %79, i32 0, i32 0
  %81 = load i32, i32* @RW_BIO, align 4
  %82 = call i32 @dia250(%struct.TYPE_4__* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %97 [
    i32 0, label %84
    i32 8, label %93
  ]

84:                                               ; preds = %25
  %85 = call i8* (...) @get_clock()
  %86 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %87 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @DASD_CQR_SUCCESS, align 4
  %89 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %90 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @EACCES, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %109

93:                                               ; preds = %25
  %94 = load i32, i32* @DASD_CQR_IN_IO, align 4
  %95 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %96 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %7, align 4
  br label %109

97:                                               ; preds = %25
  %98 = load i32, i32* @DASD_CQR_QUEUED, align 4
  %99 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %100 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @DBF_WARNING, align 4
  %102 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, %struct.dasd_device*, i8*, ...) @DBF_DEV_EVENT(i32 %101, %struct.dasd_device* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %106 = call i32 @dasd_diag_erp(%struct.dasd_device* %105)
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %97, %93, %84
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %112 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, ...) #1

declare dso_local i8* @get_clock(...) #1

declare dso_local i32 @dia250(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dasd_diag_erp(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
