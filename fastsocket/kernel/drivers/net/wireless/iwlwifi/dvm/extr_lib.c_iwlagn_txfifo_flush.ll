; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_txfifo_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_txfifo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_txfifo_flush_cmd = type { i32, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_SYNC = common dso_local global i32 0, align 4
@REPLY_TXFIFO_FLUSH = common dso_local global i32 0, align 4
@IWL_SCD_VO_MSK = common dso_local global i32 0, align 4
@IWL_SCD_VI_MSK = common dso_local global i32 0, align 4
@IWL_SCD_BE_MSK = common dso_local global i32 0, align 4
@IWL_SCD_BK_MSK = common dso_local global i32 0, align 4
@IWL_SCD_MGMT_MSK = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i32 0, align 4
@IWL_PAN_SCD_VO_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_VI_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_BE_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_BK_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_MGMT_MSK = common dso_local global i32 0, align 4
@IWL_PAN_SCD_MULTICAST_MSK = common dso_local global i32 0, align 4
@IWL_AGG_TX_QUEUE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"queue control: 0x%x\0A\00", align 1
@IWL_DROP_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_txfifo_flush(%struct.iwl_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwl_txfifo_flush_cmd, align 4
  %6 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %8 = ptrtoint %struct.iwl_txfifo_flush_cmd* %5 to i32
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %10 = load i32, i32* @CMD_SYNC, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store i32 8, i32* %11, align 4
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %13 = load i32, i32* @REPLY_TXFIFO_FLUSH, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 @memset(%struct.iwl_txfifo_flush_cmd* %5, i32 0, i32 8)
  %15 = load i32, i32* @IWL_SCD_VO_MSK, align 4
  %16 = load i32, i32* @IWL_SCD_VI_MSK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IWL_SCD_BE_MSK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IWL_SCD_BK_MSK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IWL_SCD_MGMT_MSK, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd, %struct.iwl_txfifo_flush_cmd* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @IWL_RXON_CTX_BSS, align 4
  %29 = call i64 @BIT(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load i32, i32* @IWL_PAN_SCD_VO_MSK, align 4
  %33 = load i32, i32* @IWL_PAN_SCD_VI_MSK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IWL_PAN_SCD_BE_MSK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IWL_PAN_SCD_BK_MSK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IWL_PAN_SCD_MGMT_MSK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IWL_PAN_SCD_MULTICAST_MSK, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd, %struct.iwl_txfifo_flush_cmd* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %31, %2
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* @IWL_AGG_TX_QUEUE_MSK, align 4
  %55 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd, %struct.iwl_txfifo_flush_cmd* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @cpu_to_le32(i64 %62)
  %64 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd, %struct.iwl_txfifo_flush_cmd* %5, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %67 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd, %struct.iwl_txfifo_flush_cmd* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @IWL_DROP_ALL, align 4
  %71 = call i32 @cpu_to_le16(i32 %70)
  %72 = getelementptr inbounds %struct.iwl_txfifo_flush_cmd, %struct.iwl_txfifo_flush_cmd* %5, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %74 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %73, %struct.iwl_host_cmd* %6)
  ret i32 %74
}

declare dso_local i32 @memset(%struct.iwl_txfifo_flush_cmd*, i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
