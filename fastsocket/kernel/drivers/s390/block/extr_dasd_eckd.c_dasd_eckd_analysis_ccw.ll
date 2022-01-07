; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_analysis_ccw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_analysis_ccw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i32*, %struct.LO_eckd_data*, %struct.ccw1* }
%struct.LO_eckd_data = type { i32 }
%struct.ccw1 = type { i32, i8*, i64, i8* }
%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { %struct.eckd_count* }
%struct.eckd_count = type { i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_READ_COUNT = common dso_local global i8* null, align 8
@CCW_FLAG_CC = common dso_local global i64 0, align 8
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*)* @dasd_eckd_analysis_ccw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.eckd_count*, align 8
  %6 = alloca %struct.LO_eckd_data*, align 8
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %15, %struct.dasd_eckd_private** %4, align 8
  store i32 8, i32* %9, align 4
  store i32 12, i32* %10, align 4
  %16 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %16, i32 %17, i32 %18, %struct.dasd_device* %19)
  store %struct.dasd_ccw_req* %20, %struct.dasd_ccw_req** %7, align 8
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %22 = call i64 @IS_ERR(%struct.dasd_ccw_req* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  store %struct.dasd_ccw_req* %25, %struct.dasd_ccw_req** %2, align 8
  br label %141

26:                                               ; preds = %1
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %28 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %27, i32 0, i32 7
  %29 = load %struct.ccw1*, %struct.ccw1** %28, align 8
  store %struct.ccw1* %29, %struct.ccw1** %8, align 8
  %30 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %31 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %30, i32 1
  store %struct.ccw1* %31, %struct.ccw1** %8, align 8
  %32 = ptrtoint %struct.ccw1* %30 to i32
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %34 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %33, i32 0, i32 6
  %35 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %34, align 8
  %36 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = call i32 @define_extent(i32 %32, %struct.LO_eckd_data* %35, i32 0, i32 2, i8* %36, %struct.dasd_device* %37)
  %39 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %40 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %39, i32 0, i32 6
  %41 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %40, align 8
  %42 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %41, i64 4
  store %struct.LO_eckd_data* %42, %struct.LO_eckd_data** %6, align 8
  %43 = load i64, i64* @CCW_FLAG_CC, align 8
  %44 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %45 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %44, i64 -1
  %46 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %43
  store i64 %48, i64* %46, align 8
  %49 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %50 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %49, i32 1
  store %struct.ccw1* %50, %struct.ccw1** %8, align 8
  %51 = ptrtoint %struct.ccw1* %49 to i32
  %52 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %6, align 8
  %53 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %52, i32 1
  store %struct.LO_eckd_data* %53, %struct.LO_eckd_data** %6, align 8
  %54 = ptrtoint %struct.LO_eckd_data* %52 to i32
  %55 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %56 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %57 = call i32 @locate_record(i32 %51, i32 %54, i32 0, i32 0, i32 4, i8* %55, %struct.dasd_device* %56, i32 0)
  %58 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %59 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %58, i32 0, i32 0
  %60 = load %struct.eckd_count*, %struct.eckd_count** %59, align 8
  store %struct.eckd_count* %60, %struct.eckd_count** %5, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %87, %26
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load i64, i64* @CCW_FLAG_CC, align 8
  %66 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %67 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %66, i64 -1
  %68 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %65
  store i64 %70, i64* %68, align 8
  %71 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %72 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %73 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %75 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %77 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %76, i32 0, i32 0
  store i32 8, i32* %77, align 8
  %78 = load %struct.eckd_count*, %struct.eckd_count** %5, align 8
  %79 = ptrtoint %struct.eckd_count* %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %82 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %84 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %83, i32 1
  store %struct.ccw1* %84, %struct.ccw1** %8, align 8
  %85 = load %struct.eckd_count*, %struct.eckd_count** %5, align 8
  %86 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %85, i32 1
  store %struct.eckd_count* %86, %struct.eckd_count** %5, align 8
  br label %87

87:                                               ; preds = %64
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %61

90:                                               ; preds = %61
  %91 = load i64, i64* @CCW_FLAG_CC, align 8
  %92 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %93 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %92, i64 -1
  %94 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = or i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %98 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %97, i32 1
  store %struct.ccw1* %98, %struct.ccw1** %8, align 8
  %99 = ptrtoint %struct.ccw1* %97 to i32
  %100 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %6, align 8
  %101 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %100, i32 1
  store %struct.LO_eckd_data* %101, %struct.LO_eckd_data** %6, align 8
  %102 = ptrtoint %struct.LO_eckd_data* %100 to i32
  %103 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %104 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %105 = call i32 @locate_record(i32 %99, i32 %102, i32 2, i32 0, i32 1, i8* %103, %struct.dasd_device* %104, i32 0)
  %106 = load i64, i64* @CCW_FLAG_CC, align 8
  %107 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %108 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %107, i64 -1
  %109 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = or i64 %110, %106
  store i64 %111, i64* %109, align 8
  %112 = load i8*, i8** @DASD_ECKD_CCW_READ_COUNT, align 8
  %113 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %114 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %116 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %118 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %117, i32 0, i32 0
  store i32 8, i32* %118, align 8
  %119 = load %struct.eckd_count*, %struct.eckd_count** %5, align 8
  %120 = ptrtoint %struct.eckd_count* %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %123 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %125 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %124, i32 0, i32 5
  store i32* null, i32** %125, align 8
  %126 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %127 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %128 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %127, i32 0, i32 4
  store %struct.dasd_device* %126, %struct.dasd_device** %128, align 8
  %129 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %130 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %131 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %130, i32 0, i32 3
  store %struct.dasd_device* %129, %struct.dasd_device** %131, align 8
  %132 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %133 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %132, i32 0, i32 0
  store i32 255, i32* %133, align 8
  %134 = call i32 (...) @get_clock()
  %135 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %136 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @DASD_CQR_FILLED, align 4
  %138 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %139 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  store %struct.dasd_ccw_req* %140, %struct.dasd_ccw_req** %2, align 8
  br label %141

141:                                              ; preds = %90, %24
  %142 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %142
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @define_extent(i32, %struct.LO_eckd_data*, i32, i32, i8*, %struct.dasd_device*) #1

declare dso_local i32 @locate_record(i32, i32, i32, i32, i32, i8*, %struct.dasd_device*, i32) #1

declare dso_local i32 @get_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
