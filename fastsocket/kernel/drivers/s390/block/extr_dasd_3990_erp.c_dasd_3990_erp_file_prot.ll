; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_file_prot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_file_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Accessing the DASD failed because of a hardware error\0A\00", align 1
@DASD_CQR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_file_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_file_prot(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %4 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %4, i32 0, i32 0
  %6 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  store %struct.dasd_device* %6, %struct.dasd_device** %3, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @dev_err(i32* %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %13 = load i32, i32* @DASD_CQR_FAILED, align 4
  %14 = call %struct.dasd_ccw_req* @dasd_3990_erp_cleanup(%struct.dasd_ccw_req* %12, i32 %13)
  ret %struct.dasd_ccw_req* %14
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_cleanup(%struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
