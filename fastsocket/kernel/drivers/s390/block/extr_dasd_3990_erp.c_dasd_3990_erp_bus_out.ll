; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_bus_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_bus_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, %struct.dasd_device* }
%struct.dasd_device = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"bus out parity error or BOPC requested by channel\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_bus_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_bus_out(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %4 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %4, i32 0, i32 2
  %6 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  store %struct.dasd_device* %6, %struct.dasd_device** %3, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)*
  %11 = icmp ne %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* %10, @dasd_3990_erp_bus_out
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 1
  store i32 256, i32* %14, align 8
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %15, i32 0, i32 0
  store i64 ptrtoint (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_bus_out to i64), i64* %16, align 8
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @DBF_WARNING, align 4
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = call i32 @DBF_DEV_EVENT(i32 %18, %struct.dasd_device* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 60, %22
  %24 = call i32 @dasd_3990_erp_block_queue(%struct.dasd_ccw_req* %21, i32 %23)
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %26
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_3990_erp_block_queue(%struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
