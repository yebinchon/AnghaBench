; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_disable_pan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_disable_pan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32 }
%struct.iwl_rxon_cmd = type { i32, i32 }
%struct.iwl_notification_wait = type { i32 }

@iwlagn_disable_pan.deactivate_cmd = internal constant [1 x i32] [i32 128], align 4
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@RXON_DEV_TYPE_P2P = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error disabling PAN (%d)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Timed out waiting for PAN disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_rxon_cmd*)* @iwlagn_disable_pan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_disable_pan(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.iwl_rxon_cmd* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl_rxon_cmd*, align 8
  %7 = alloca %struct.iwl_notification_wait, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  store %struct.iwl_rxon_cmd* %2, %struct.iwl_rxon_cmd** %6, align 8
  %11 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 0
  %19 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwlagn_disable_pan.deactivate_cmd, i64 0, i64 0))
  %20 = call i32 @iwl_init_notification_wait(i32* %18, %struct.iwl_notification_wait* %7, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwlagn_disable_pan.deactivate_cmd, i64 0, i64 0), i32 %19, i32* null, i32* null)
  %21 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @RXON_DEV_TYPE_P2P, align 4
  %28 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CMD_SYNC, align 4
  %35 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %36 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %30, i32 %33, i32 %34, i32 8, %struct.iwl_rxon_cmd* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 0
  %51 = call i32 @iwl_remove_notification(i32* %50, %struct.iwl_notification_wait* %7)
  br label %63

52:                                               ; preds = %3
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 0
  %55 = load i32, i32* @HZ, align 4
  %56 = call i32 @iwl_wait_notification(i32* %54, %struct.iwl_notification_wait* %7, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %61 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_rxon_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
