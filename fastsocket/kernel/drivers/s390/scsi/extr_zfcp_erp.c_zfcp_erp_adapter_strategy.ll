; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_CLOSE_ONLY = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_adapter_strategy(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %5 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %5, i32 0, i32 1
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_adapter* %7, %struct.zfcp_adapter** %4, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  %11 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %16 = call i32 @zfcp_erp_adapter_strategy_close(%struct.zfcp_erp_action* %15)
  %17 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ZFCP_STATUS_ERP_CLOSE_ONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %28 = call i64 @zfcp_erp_adapter_strategy_open(%struct.zfcp_erp_action* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32 @ssleep(i32 8)
  %32 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %30, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_adapter_strategy_close(%struct.zfcp_erp_action*) #1

declare dso_local i64 @zfcp_erp_adapter_strategy_open(%struct.zfcp_erp_action*) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
