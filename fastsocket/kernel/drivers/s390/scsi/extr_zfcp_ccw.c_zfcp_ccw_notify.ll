; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ZFCP_STATUS_ADAPTER_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nigo\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"The FCP device has been detached\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ccnoti1\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"The CHPID for the FCP device is offline\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ccnoti2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"niop\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"The FCP device is operational again\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ccnoti3\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_SET = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"ccnoti4\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"The FCP device did not respond within the specified time\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ccnoti5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32)* @zfcp_ccw_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_ccw_notify(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = call %struct.zfcp_adapter* @dev_get_drvdata(i32* %7)
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %71 [
    i32 130, label %10
    i32 129, label %30
    i32 128, label %38
    i32 131, label %63
  ]

10:                                               ; preds = %2
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 2
  %13 = call i32 @atomic_read(i32* %12)
  %14 = load i32, i32* @ZFCP_STATUS_ADAPTER_SUSPENDED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @zfcp_dbf_hba_base(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %71

22:                                               ; preds = %10
  %23 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %29 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %28, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %71

30:                                               ; preds = %2
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %37 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %36, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null)
  br label %71

38:                                               ; preds = %2
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %39, i32 0, i32 2
  %41 = call i32 @atomic_read(i32* %40)
  %42 = load i32, i32* @ZFCP_STATUS_ADAPTER_SUSPENDED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @zfcp_dbf_hba_base(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %71

50:                                               ; preds = %38
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %57 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %58 = load i32, i32* @ZFCP_SET, align 4
  %59 = call i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %57, i32 %58)
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %61 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %62 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %60, i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* null)
  br label %71

63:                                               ; preds = %2
  %64 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %70 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %69, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* null)
  br label %71

71:                                               ; preds = %2, %63, %50, %45, %30, %22, %17
  ret i32 1
}

declare dso_local %struct.zfcp_adapter* @dev_get_drvdata(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_dbf_hba_base(i32, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter*, i32, i8*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter*, i8*, i32*, i32, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
