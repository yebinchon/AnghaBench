; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c___ath9k_htc_remove_monitor_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c___ath9k_htc_remove_monitor_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_vif = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_VAP_REMOVE_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to remove monitor interface at idx: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*)* @__ath9k_htc_remove_monitor_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath9k_htc_target_vif, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = call i32 @memset(%struct.ath9k_htc_target_vif* %4, i32 0, i32 8)
  %12 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %4, i32 0, i32 1
  %13 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memcpy(i32* %12, i32 %15, i32 %16)
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @WMI_VAP_REMOVE_CMDID, align 4
  %23 = call i32 @WMI_CMD_BUF(i32 %22, %struct.ath9k_htc_target_vif* %4)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ath_err(%struct.ath_common* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %38 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_vif*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_vif*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
