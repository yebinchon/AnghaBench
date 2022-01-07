; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_read_unit_address_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_read_unit_address_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.alias_lcu = type { i32, i32, %struct.dasd_psf_prssd_data* }
%struct.dasd_psf_prssd_data = type { i32, i32 }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device*, i32, i32, %struct.ccw1*, i64, i32, %struct.dasd_device* }
%struct.ccw1 = type { i32, i8*, i32, i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PSF_ORDER_PRSSD = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RSSD = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@NEED_UAC_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.alias_lcu*)* @read_unit_address_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_unit_address_configuration(%struct.dasd_device* %0, %struct.alias_lcu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca %struct.dasd_psf_prssd_data*, align 8
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.alias_lcu* %1, %struct.alias_lcu** %5, align 8
  %11 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %12 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %13 = call %struct.dasd_ccw_req* @dasd_kmalloc_request(i32 %11, i32 2, i32 8, %struct.dasd_device* %12)
  store %struct.dasd_ccw_req* %13, %struct.dasd_ccw_req** %7, align 8
  %14 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %15 = call i64 @IS_ERR(%struct.dasd_ccw_req* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %18)
  store i32 %19, i32* %3, align 4
  br label %141

20:                                               ; preds = %2
  %21 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %23 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %22, i32 0, i32 8
  store %struct.dasd_device* %21, %struct.dasd_device** %23, align 8
  %24 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 2
  store %struct.dasd_device* %24, %struct.dasd_device** %26, align 8
  %27 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %29 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %28, i32 0, i32 7
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %32 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %31, i32 0, i32 0
  store i32 10, i32* %32, align 8
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 20, %33
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %36 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %40, %struct.dasd_psf_prssd_data** %6, align 8
  %41 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %6, align 8
  %42 = call i32 @memset(%struct.dasd_psf_prssd_data* %41, i32 0, i32 8)
  %43 = load i32, i32* @PSF_ORDER_PRSSD, align 4
  %44 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %6, align 8
  %45 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %6, align 8
  %47 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %46, i32 0, i32 0
  store i32 14, i32* %47, align 4
  %48 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %49 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %48, i32 0, i32 5
  %50 = load %struct.ccw1*, %struct.ccw1** %49, align 8
  store %struct.ccw1* %50, %struct.ccw1** %8, align 8
  %51 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %52 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %53 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %55 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %54, i32 0, i32 0
  store i32 8, i32* %55, align 8
  %56 = load i32, i32* @CCW_FLAG_CC, align 4
  %57 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %58 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %6, align 8
  %62 = ptrtoint %struct.dasd_psf_prssd_data* %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %65 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %67 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %66, i32 0, i32 2
  %68 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %67, align 8
  %69 = call i32 @memset(%struct.dasd_psf_prssd_data* %68, i32 0, i32 8)
  %70 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %71 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %70, i32 1
  store %struct.ccw1* %71, %struct.ccw1** %8, align 8
  %72 = load i32, i32* @DASD_ECKD_CCW_RSSD, align 4
  %73 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %74 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %76 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %75, i32 0, i32 0
  store i32 8, i32* %76, align 8
  %77 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %78 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %77, i32 0, i32 2
  %79 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %78, align 8
  %80 = ptrtoint %struct.dasd_psf_prssd_data* %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %83 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = call i32 (...) @get_clock()
  %85 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %86 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @DASD_CQR_FILLED, align 4
  %88 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %89 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %91 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %90, i32 0, i32 0
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load i32, i32* @NEED_UAC_UPDATE, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %97 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %101 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %100, i32 0, i32 0
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %115, %20
  %105 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %106 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %105)
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %112 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 0
  br label %115

115:                                              ; preds = %110, %107
  %116 = phi i1 [ false, %107 ], [ %114, %110 ]
  br i1 %116, label %104, label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %122 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %121, i32 0, i32 0
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  %125 = load i32, i32* @NEED_UAC_UPDATE, align 4
  %126 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %127 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %131 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %130, i32 0, i32 0
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  br label %134

134:                                              ; preds = %120, %117
  %135 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %136 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %137 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %136, i32 0, i32 2
  %138 = load %struct.dasd_device*, %struct.dasd_device** %137, align 8
  %139 = call i32 @dasd_kfree_request(%struct.dasd_ccw_req* %135, %struct.dasd_device* %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %134, %17
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.dasd_ccw_req* @dasd_kmalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.dasd_psf_prssd_data*, i32, i32) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_kfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
