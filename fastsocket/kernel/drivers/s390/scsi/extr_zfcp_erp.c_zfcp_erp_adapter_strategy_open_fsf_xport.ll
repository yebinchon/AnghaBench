; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open_fsf_xport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open_fsf_xport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"erasox1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erasox2\00", align 1
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strategy_open_fsf_xport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_adapter_strategy_open_fsf_xport(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 1
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %5, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 3
  %11 = call i32 @write_lock_irq(i32* %10)
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %13 = call i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action* %12)
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %14, i32 0, i32 3
  %16 = call i32 @write_unlock_irq(i32* %15)
  %17 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %18 = call i32 @zfcp_fsf_exchange_port_data(%struct.zfcp_erp_action* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %25
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @zfcp_dbf_rec_thread_lock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %38, i32 0, i32 1
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_event(i32 %37, i32 %43)
  %45 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @zfcp_dbf_rec_thread_lock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %50 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %30
  %56 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %30
  %58 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %55, %28, %23
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_fsf_exchange_port_data(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_dbf_rec_thread_lock(i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
