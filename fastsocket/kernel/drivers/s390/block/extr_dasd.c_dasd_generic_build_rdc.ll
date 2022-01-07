; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_build_rdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_build_rdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i64, %struct.ccw1* }
%struct.ccw1 = type { i32, i64, i8*, i32 }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@CCW_CMD_RDC = common dso_local global i32 0, align 4
@CCW_FLAG_IDA = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, i8*, i32, i32)* @dasd_generic_build_rdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_generic_build_rdc(%struct.dasd_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dasd_ccw_req*, align 8
  %11 = alloca %struct.ccw1*, align 8
  %12 = alloca i64*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %16 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %13, i32 1, i32 %14, %struct.dasd_device* %15)
  store %struct.dasd_ccw_req* %16, %struct.dasd_ccw_req** %10, align 8
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %18 = call i64 @IS_ERR(%struct.dasd_ccw_req* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  store %struct.dasd_ccw_req* %26, %struct.dasd_ccw_req** %5, align 8
  br label %86

27:                                               ; preds = %4
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %29 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %28, i32 0, i32 7
  %30 = load %struct.ccw1*, %struct.ccw1** %29, align 8
  store %struct.ccw1* %30, %struct.ccw1** %11, align 8
  %31 = load i32, i32* @CCW_CMD_RDC, align 4
  %32 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %33 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @idal_is_needed(i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %27
  %39 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %40 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64* %42, i64** %12, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = ptrtoint i64* %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %47 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @CCW_FLAG_IDA, align 8
  %49 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %50 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64*, i64** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64* @idal_create_words(i64* %51, i8* %52, i32 %53)
  store i64* %54, i64** %12, align 8
  br label %63

55:                                               ; preds = %27
  %56 = load i8*, i8** %7, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %60 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %62 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %55, %38
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %66 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %68 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %69 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %68, i32 0, i32 5
  store %struct.dasd_device* %67, %struct.dasd_device** %69, align 8
  %70 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %71 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %72 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %71, i32 0, i32 4
  store %struct.dasd_device* %70, %struct.dasd_device** %72, align 8
  %73 = load i32, i32* @HZ, align 4
  %74 = mul nsw i32 10, %73
  %75 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %76 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %78 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %77, i32 0, i32 1
  store i32 256, i32* %78, align 4
  %79 = call i32 (...) @get_clock()
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %81 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @DASD_CQR_FILLED, align 4
  %83 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  %84 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %10, align 8
  store %struct.dasd_ccw_req* %85, %struct.dasd_ccw_req** %5, align 8
  br label %86

86:                                               ; preds = %63, %20
  %87 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  ret %struct.dasd_ccw_req* %87
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i64 @idal_is_needed(i8*, i32) #1

declare dso_local i64* @idal_create_words(i64*, i8*, i32) #1

declare dso_local i32 @get_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
