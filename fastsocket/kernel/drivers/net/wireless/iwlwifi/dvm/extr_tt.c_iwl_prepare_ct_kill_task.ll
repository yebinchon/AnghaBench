; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_prepare_ct_kill_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_prepare_ct_kill_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Prepare to enter IWL_TI_CT_KILL\0A\00", align 1
@CMD_SYNC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CT_KILL_WAITING_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl_prepare_ct_kill_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_prepare_ct_kill_task(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %6 = load i32, i32* @CMD_SYNC, align 4
  %7 = call i32 @iwl_send_statistics_request(%struct.iwl_priv* %5, i32 %6, i32 0)
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* @CT_KILL_WAITING_DURATION, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = add nsw i64 %11, %13
  %15 = call i32 @mod_timer(i32* %10, i64 %14)
  ret void
}

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_send_statistics_request(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
