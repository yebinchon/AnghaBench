; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_set_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32, i64 }

@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"Setting up data structures for the FCP adapter failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ccsonl1\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_SET = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ccsonl2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @zfcp_ccw_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_ccw_set_online(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = call %struct.zfcp_adapter* @dev_get_drvdata(i32* %7)
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %3, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %10 = icmp ne %struct.zfcp_adapter* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %13 = call i32 @zfcp_adapter_enqueue(%struct.ccw_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %44

20:                                               ; preds = %11
  %21 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = call %struct.zfcp_adapter* @dev_get_drvdata(i32* %22)
  store %struct.zfcp_adapter* %23, %struct.zfcp_adapter** %3, align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %26 = call i32 @zfcp_reqlist_isempty(%struct.zfcp_adapter* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %34 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %35 = load i32, i32* @ZFCP_SET, align 4
  %36 = call i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %34, i32 %35)
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %38 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %39 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %41 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %40)
  %42 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %43 = call i32 @zfcp_fc_inverse_conditional_port_scan(%struct.zfcp_adapter* %42)
  br label %44

44:                                               ; preds = %24, %16
  %45 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %49, i32 0, i32 0
  %51 = call i32 @flush_work(i32* %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.zfcp_adapter* @dev_get_drvdata(i32*) #1

declare dso_local i32 @zfcp_adapter_enqueue(%struct.ccw_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @zfcp_reqlist_isempty(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter*, i8*, i32*, i32, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_fc_inverse_conditional_port_scan(%struct.zfcp_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
