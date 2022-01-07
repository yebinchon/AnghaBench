; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_extts_enable_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_extts_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ptp_clock = type { %struct.ptp_clock_info* }
%struct.ptp_clock_info = type { i64, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* }
%struct.ptp_clock_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@PTP_CLK_REQ_EXTTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @extts_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extts_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %21 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %22 = bitcast %struct.TYPE_2__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 1
  %24 = load i32, i32* @PTP_CLK_REQ_EXTTS, align 4
  store i32 %24, i32* %23, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %29, i32* %14)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %58

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %39 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %58

43:                                               ; preds = %34
  %44 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %45 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %44, i32 0, i32 1
  %46 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %45, align 8
  %47 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = call i32 %46(%struct.ptp_clock_info* %47, %struct.ptp_clock_request* %12, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %58

56:                                               ; preds = %43
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %5, align 8
  br label %61

58:                                               ; preds = %55, %42, %33
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local %struct.ptp_clock* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
