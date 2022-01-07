; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_op_mode_mvm_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_op_mode_mvm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NVM_NUM_OF_SECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*)* @iwl_op_mode_mvm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_op_mode_mvm_stop(%struct.iwl_op_mode* %0) #0 {
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %2, align 8
  %5 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %6 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %5)
  store %struct.iwl_mvm* %6, %struct.iwl_mvm** %3, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = call i32 @iwl_mvm_leds_exit(%struct.iwl_mvm* %7)
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ieee80211_unregister_hw(i32 %11)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kfree(i32 %15)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @iwl_trans_stop_hw(i32 %19, i32 1)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @iwl_phy_db_free(i32* %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iwl_free_nvm_data(i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %45, %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NVM_NUM_OF_SECTIONS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree(i32 %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ieee80211_free_hw(i32 %51)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @iwl_mvm_leds_exit(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iwl_trans_stop_hw(i32, i32) #1

declare dso_local i32 @iwl_phy_db_free(i32*) #1

declare dso_local i32 @iwl_free_nvm_data(i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
