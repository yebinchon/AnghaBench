; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32 }

@ZFCP_CLEAR = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_SET = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32, i8*)* @zfcp_ccw_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_ccw_activate(%struct.ccw_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = call %struct.zfcp_adapter* @dev_get_drvdata(i32* %10)
  store %struct.zfcp_adapter* %11, %struct.zfcp_adapter** %8, align 8
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %13 = icmp ne %struct.zfcp_adapter* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ZFCP_CLEAR, align 4
  %20 = call i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter* %16, i8* %17, i32* null, i32 %18, i32 %19)
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %24 = load i32, i32* @ZFCP_SET, align 4
  %25 = call i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter* %21, i8* %22, i32* null, i32 %23, i32 %24)
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %27 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %26, i32 %27, i8* %28, i32* null)
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %31 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %30)
  %32 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %32, i32 0, i32 0
  %34 = call i32 @flush_work(i32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %15, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.zfcp_adapter* @dev_get_drvdata(i32*) #1

declare dso_local i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter*, i8*, i32*, i32, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
