; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_equip_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_equip_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { {}*, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNS1_WRITE_INHIBITED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [34 x i8] c"Write inhibited path encountered\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"04\00", align 1
@SNS2_ENV_DATA_PRESENT = common dso_local global i8 0, align 1
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Equipment Check - environmental data present\00", align 1
@SNS1_PERM_ERR = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Equipment Check - retry exhausted or undesirable\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Equipment check or processing error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_equip_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_equip_check(%struct.dasd_ccw_req* %0, i8* %1) #0 {
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
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_equip_check, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @SNS1_WRITE_INHIBITED, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %32 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req* %31)
  store %struct.dasd_ccw_req* %32, %struct.dasd_ccw_req** %3, align 8
  br label %75

33:                                               ; preds = %2
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @SNS2_ENV_DATA_PRESENT, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load i32, i32* @DBF_WARNING, align 4
  %44 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %45 = call i32 @DBF_DEV_EVENT(i32 %43, %struct.dasd_device* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @dasd_3990_handle_env_data(%struct.dasd_ccw_req* %46, i8* %47)
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req* %49, i8* %50)
  store %struct.dasd_ccw_req* %51, %struct.dasd_ccw_req** %3, align 8
  br label %74

52:                                               ; preds = %33
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @SNS1_PERM_ERR, align 1
  %58 = sext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @DBF_WARNING, align 4
  %63 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %64 = call i32 @DBF_DEV_EVENT(i32 %62, %struct.dasd_device* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %66 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req* %65)
  store %struct.dasd_ccw_req* %66, %struct.dasd_ccw_req** %3, align 8
  br label %73

67:                                               ; preds = %52
  %68 = load i32, i32* @DBF_WARNING, align 4
  %69 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %70 = call i32 @DBF_DEV_EVENT(i32 %68, %struct.dasd_device* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %72 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_5(%struct.dasd_ccw_req* %71)
  store %struct.dasd_ccw_req* %72, %struct.dasd_ccw_req** %3, align 8
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %42
  br label %75

75:                                               ; preds = %74, %20
  %76 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %76
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_3990_handle_env_data(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_5(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
