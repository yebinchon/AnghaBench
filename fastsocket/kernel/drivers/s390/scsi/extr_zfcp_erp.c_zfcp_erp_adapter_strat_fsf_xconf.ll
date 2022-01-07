; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strat_fsf_xconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strat_fsf_xconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32, i32, i32, i32, i32 }

@ZFCP_STATUS_ADAPTER_XCONFIG_OK = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_HOST_CON_INIT = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"erasfx1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erasfx2\00", align 1
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@FC_PORTTYPE_PTP = common dso_local global i64 0, align 8
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strat_fsf_xconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_adapter_strat_fsf_xconf(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 1
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  store %struct.zfcp_adapter* %9, %struct.zfcp_adapter** %6, align 8
  %10 = load i32, i32* @ZFCP_STATUS_ADAPTER_XCONFIG_OK, align 4
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 1
  %13 = call i32 @atomic_clear_mask(i32 %10, i32* %12)
  store i32 7, i32* %4, align 4
  br label %14

14:                                               ; preds = %78, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %14
  %18 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %19, i32 0, i32 1
  %21 = call i32 @atomic_clear_mask(i32 %18, i32* %20)
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 5
  %24 = call i32 @write_lock_irq(i32* %23)
  %25 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %26 = call i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action* %25)
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %27, i32 0, i32 5
  %29 = call i32 @write_unlock_irq(i32* %28)
  %30 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %31 = call i64 @zfcp_fsf_exchange_config_data(%struct.zfcp_erp_action* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 1
  %37 = call i32 @atomic_clear_mask(i32 %34, i32* %36)
  %38 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %38, i32* %2, align 4
  br label %106

39:                                               ; preds = %17
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @zfcp_dbf_rec_thread_lock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %47, i32 0, i32 3
  %49 = call i32 @list_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @wait_event(i32 %46, i32 %52)
  %54 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @zfcp_dbf_rec_thread_lock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %59 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  br label %81

65:                                               ; preds = %39
  %66 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %66, i32 0, i32 1
  %68 = call i32 @atomic_read(i32* %67)
  %69 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ssleep(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %76, 2
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  br label %14

81:                                               ; preds = %72, %64, %14
  %82 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %83 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %83, i32 0, i32 1
  %85 = call i32 @atomic_clear_mask(i32 %82, i32* %84)
  %86 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %87 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %86, i32 0, i32 1
  %88 = call i32 @atomic_read(i32* %87)
  %89 = load i32, i32* @ZFCP_STATUS_ADAPTER_XCONFIG_OK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %93, i32* %2, align 4
  br label %106

94:                                               ; preds = %81
  %95 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %96 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @fc_host_port_type(i32 %97)
  %99 = load i64, i64* @FC_PORTTYPE_PTP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %103 = call i32 @zfcp_erp_enqueue_ptp_port(%struct.zfcp_adapter* %102)
  br label %104

104:                                              ; preds = %101, %94
  %105 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %92, %33
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i64 @zfcp_fsf_exchange_config_data(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_dbf_rec_thread_lock(i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i64 @fc_host_port_type(i32) #1

declare dso_local i32 @zfcp_erp_enqueue_ptp_port(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
