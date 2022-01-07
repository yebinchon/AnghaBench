; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_ready_for_ct_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_ready_for_ct_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.iwl_tt_mgmt }
%struct.iwl_tt_mgmt = type { i64 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@IWL_TI_CT_KILL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"entering CT_KILL state when temperature timer expired\0A\00", align 1
@STATUS_CT_KILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @iwl_tt_ready_for_ct_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_tt_ready_for_ct_kill(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_tt_mgmt*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.iwl_priv*
  store %struct.iwl_priv* %6, %struct.iwl_priv** %3, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 1
  store %struct.iwl_tt_mgmt* %8, %struct.iwl_tt_mgmt** %4, align 8
  %9 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IWL_TI_CT_KILL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @IWL_TI_CT_KILL, align 8
  %25 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @STATUS_CT_KILL, align 4
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %32 = call i32 @iwl_perform_ct_kill_task(%struct.iwl_priv* %31, i32 1)
  br label %33

33:                                               ; preds = %14, %21, %15
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_perform_ct_kill_task(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
