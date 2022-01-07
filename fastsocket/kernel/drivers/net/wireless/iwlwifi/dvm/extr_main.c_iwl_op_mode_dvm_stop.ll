; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_op_mode_dvm_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_op_mode_dvm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_priv = type { i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"*** UNLOAD DRIVER ***\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_op_mode_dvm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_op_mode_dvm_stop(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %4 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %5 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %4)
  store %struct.iwl_priv* %5, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = call i32 @iwl_testmode_free(%struct.iwl_priv* %8)
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = call i32 @iwlagn_mac_unregister(%struct.iwl_priv* %10)
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %13 = call i32 @iwl_tt_exit(%struct.iwl_priv* %12)
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @iwl_free_nvm_data(i32 %20)
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @flush_workqueue(i32* %24)
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @destroy_workqueue(i32* %28)
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = call i32 @iwl_uninit_drv(%struct.iwl_priv* %32)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_kfree_skb(i32 %36)
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iwl_trans_stop_hw(i32 %40, i32 1)
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ieee80211_free_hw(i32 %44)
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_testmode_free(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_mac_unregister(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_tt_exit(%struct.iwl_priv*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iwl_free_nvm_data(i32) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @iwl_uninit_drv(%struct.iwl_priv*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @iwl_trans_stop_hw(i32, i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
