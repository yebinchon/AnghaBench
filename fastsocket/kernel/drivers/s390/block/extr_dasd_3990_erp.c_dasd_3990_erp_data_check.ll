; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_data_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_data_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { {}*, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNS2_CORRECTABLE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [56 x i8] c"Data recovered during retry with PCI fetch mode active\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"No way to inform application about the possibly incorrect data\00", align 1
@SNS2_ENV_DATA_PRESENT = common dso_local global i8 0, align 1
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Uncorrectable data check recovered secondary addr of duplex pair\00", align 1
@SNS1_PERM_ERR = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Uncorrectable data check with internal retry exhausted\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Uncorrectable data check with retry count exhausted...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_data_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_data_check(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 1
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %5, align 8
  %9 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)**
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_data_check, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 2
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @SNS2_CORRECTABLE, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_emerg(i32* %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %66

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @SNS2_ENV_DATA_PRESENT, align 1
  %33 = sext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32, i32* @DBF_WARNING, align 4
  %38 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %39 = call i32 @DBF_DEV_EVENT(i32 %37, %struct.dasd_device* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req* %40, i8* %41)
  store %struct.dasd_ccw_req* %42, %struct.dasd_ccw_req** %3, align 8
  br label %65

43:                                               ; preds = %27
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @SNS1_PERM_ERR, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* @DBF_WARNING, align 4
  %54 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %55 = call i32 @DBF_DEV_EVENT(i32 %53, %struct.dasd_device* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %57 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req* %56)
  store %struct.dasd_ccw_req* %57, %struct.dasd_ccw_req** %3, align 8
  br label %64

58:                                               ; preds = %43
  %59 = load i32, i32* @DBF_WARNING, align 4
  %60 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %61 = call i32 @DBF_DEV_EVENT(i32 %59, %struct.dasd_device* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %62 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %63 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_5(%struct.dasd_ccw_req* %62)
  store %struct.dasd_ccw_req* %63, %struct.dasd_ccw_req** %3, align 8
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %36
  br label %66

66:                                               ; preds = %65, %20
  %67 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %67
}

declare dso_local i32 @dev_emerg(i32*, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_5(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
