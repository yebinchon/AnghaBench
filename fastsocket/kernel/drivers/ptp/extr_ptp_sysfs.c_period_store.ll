; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_period_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_period_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ptp_clock = type { %struct.ptp_clock_info* }
%struct.ptp_clock_info = type { i64, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* }
%struct.ptp_clock_request = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@PTP_CLK_REQ_PEROUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%u %lld %u %lld %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @period_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @period_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ptp_clock*, align 8
  %11 = alloca %struct.ptp_clock_info*, align 8
  %12 = alloca %struct.ptp_clock_request, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.ptp_clock* @dev_get_drvdata(%struct.device* %16)
  store %struct.ptp_clock* %17, %struct.ptp_clock** %10, align 8
  %18 = load %struct.ptp_clock*, %struct.ptp_clock** %10, align 8
  %19 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %18, i32 0, i32 0
  %20 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %19, align 8
  store %struct.ptp_clock_info* %20, %struct.ptp_clock_info** %11, align 8
  %21 = bitcast %struct.ptp_clock_request* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 1
  %23 = load i32, i32* @PTP_CLK_REQ_PEROUT, align 4
  store i32 %23, i32* %22, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %15, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %28, i32* %31, i32* %34, i64* %37, i64* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 5
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %80

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %50 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %80

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %60, %54
  %67 = phi i1 [ true, %54 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %70 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %69, i32 0, i32 1
  %71 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %70, align 8
  %72 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 %71(%struct.ptp_clock_info* %72, %struct.ptp_clock_request* %12, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %80

78:                                               ; preds = %66
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %5, align 8
  br label %83

80:                                               ; preds = %77, %53, %44
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %80, %78
  %84 = load i64, i64* %5, align 8
  ret i64 %84
}

declare dso_local %struct.ptp_clock* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*, i32*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
