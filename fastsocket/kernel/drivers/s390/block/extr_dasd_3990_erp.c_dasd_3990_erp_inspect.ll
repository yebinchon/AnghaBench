; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_inspect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DASD_SENSE_BIT_0 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_inspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_inspect(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %4, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = call %struct.dasd_ccw_req* @dasd_3990_erp_inspect_alias(%struct.dasd_ccw_req* %6)
  store %struct.dasd_ccw_req* %7, %struct.dasd_ccw_req** %4, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %9 = icmp ne %struct.dasd_ccw_req* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %11, %struct.dasd_ccw_req** %2, align 8
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i8* @dasd_get_sense(i32* %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %22 = call %struct.dasd_ccw_req* @dasd_3990_erp_control_check(%struct.dasd_ccw_req* %21)
  store %struct.dasd_ccw_req* %22, %struct.dasd_ccw_req** %4, align 8
  br label %41

23:                                               ; preds = %12
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 27
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call %struct.dasd_ccw_req* @dasd_3990_erp_inspect_24(%struct.dasd_ccw_req* %33, i8* %34)
  store %struct.dasd_ccw_req* %35, %struct.dasd_ccw_req** %4, align 8
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.dasd_ccw_req* @dasd_3990_erp_inspect_32(%struct.dasd_ccw_req* %37, i8* %38)
  store %struct.dasd_ccw_req* %39, %struct.dasd_ccw_req** %4, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %42, %struct.dasd_ccw_req** %2, align 8
  br label %43

43:                                               ; preds = %41, %10
  %44 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %44
}

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_inspect_alias(%struct.dasd_ccw_req*) #1

declare dso_local i8* @dasd_get_sense(i32*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_control_check(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_inspect_24(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_inspect_32(%struct.dasd_ccw_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
