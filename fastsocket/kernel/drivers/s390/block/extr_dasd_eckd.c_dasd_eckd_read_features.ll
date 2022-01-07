; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_psf_prssd_data = type { i32, i32 }
%struct.dasd_rssd_features = type { i32, i32 }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device*, i64, i32, i32, %struct.ccw1*, i32*, %struct.dasd_device* }
%struct.ccw1 = type { i32, i8*, i32, i32 }
%struct.dasd_eckd_private = type { %struct.dasd_rssd_features }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not allocate initialization request\00", align 1
@HZ = common dso_local global i32 0, align 4
@PSF_ORDER_PRSSD = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RSSD = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Reading device feature codes failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_read_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_read_features(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_psf_prssd_data*, align 8
  %5 = alloca %struct.dasd_rssd_features*, align 8
  %6 = alloca %struct.dasd_ccw_req*, align 8
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %13, %struct.dasd_eckd_private** %9, align 8
  %14 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  %15 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %14, i32 0, i32 0
  %16 = call i32 @memset(%struct.dasd_rssd_features* %15, i32 0, i32 8)
  %17 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %18 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %19 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %17, i32 2, i32 16, %struct.dasd_device* %18)
  store %struct.dasd_ccw_req* %19, %struct.dasd_ccw_req** %6, align 8
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %21 = call i64 @IS_ERR(%struct.dasd_ccw_req* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @DBF_WARNING, align 4
  %25 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @DBF_EVENT_DEVID(i32 %24, %struct.TYPE_2__* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %29)
  store i32 %30, i32* %2, align 4
  br label %129

31:                                               ; preds = %1
  %32 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %34 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %33, i32 0, i32 8
  store %struct.dasd_device* %32, %struct.dasd_device** %34, align 8
  %35 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %36 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %37 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %36, i32 0, i32 2
  store %struct.dasd_device* %35, %struct.dasd_device** %37, align 8
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %39 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %38, i32 0, i32 7
  store i32* null, i32** %39, align 8
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 0
  store i32 256, i32* %41, align 8
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 10, %42
  %44 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %45 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %47 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %49, %struct.dasd_psf_prssd_data** %4, align 8
  %50 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %4, align 8
  %51 = bitcast %struct.dasd_psf_prssd_data* %50 to %struct.dasd_rssd_features*
  %52 = call i32 @memset(%struct.dasd_rssd_features* %51, i32 0, i32 8)
  %53 = load i32, i32* @PSF_ORDER_PRSSD, align 4
  %54 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %4, align 8
  %55 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %4, align 8
  %57 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %56, i32 0, i32 0
  store i32 65, i32* %57, align 4
  %58 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %59 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %58, i32 0, i32 6
  %60 = load %struct.ccw1*, %struct.ccw1** %59, align 8
  store %struct.ccw1* %60, %struct.ccw1** %7, align 8
  %61 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %62 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %63 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %65 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %64, i32 0, i32 0
  store i32 8, i32* %65, align 8
  %66 = load i32, i32* @CCW_FLAG_CC, align 4
  %67 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %68 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %4, align 8
  %72 = ptrtoint %struct.dasd_psf_prssd_data* %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %75 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %4, align 8
  %77 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %76, i64 1
  %78 = bitcast %struct.dasd_psf_prssd_data* %77 to %struct.dasd_rssd_features*
  store %struct.dasd_rssd_features* %78, %struct.dasd_rssd_features** %5, align 8
  %79 = load %struct.dasd_rssd_features*, %struct.dasd_rssd_features** %5, align 8
  %80 = call i32 @memset(%struct.dasd_rssd_features* %79, i32 0, i32 8)
  %81 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %82 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %81, i32 1
  store %struct.ccw1* %82, %struct.ccw1** %7, align 8
  %83 = load i32, i32* @DASD_ECKD_CCW_RSSD, align 4
  %84 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %85 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %87 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %86, i32 0, i32 0
  store i32 8, i32* %87, align 8
  %88 = load %struct.dasd_rssd_features*, %struct.dasd_rssd_features** %5, align 8
  %89 = ptrtoint %struct.dasd_rssd_features* %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %92 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = call i32 (...) @get_clock()
  %94 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %95 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DASD_CQR_FILLED, align 4
  %97 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %98 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %100 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %31
  %104 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %105 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %107, %struct.dasd_psf_prssd_data** %4, align 8
  %108 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %4, align 8
  %109 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %108, i64 1
  %110 = bitcast %struct.dasd_psf_prssd_data* %109 to %struct.dasd_rssd_features*
  store %struct.dasd_rssd_features* %110, %struct.dasd_rssd_features** %5, align 8
  %111 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  %112 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %111, i32 0, i32 0
  %113 = load %struct.dasd_rssd_features*, %struct.dasd_rssd_features** %5, align 8
  %114 = call i32 @memcpy(%struct.dasd_rssd_features* %112, %struct.dasd_rssd_features* %113, i32 8)
  br label %122

115:                                              ; preds = %31
  %116 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %117 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @dev_warn(i32* %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %115, %103
  %123 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %124 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %125 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %124, i32 0, i32 2
  %126 = load %struct.dasd_device*, %struct.dasd_device** %125, align 8
  %127 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %123, %struct.dasd_device* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %122, %23
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.dasd_rssd_features*, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @memcpy(%struct.dasd_rssd_features*, %struct.dasd_rssd_features*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
