; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_set_rxon_hwcrypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_set_rxon_hwcrypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.iwl_rxon_cmd }
%struct.iwl_rxon_cmd = type { i32 }

@RXON_FILTER_DIS_DECRYPT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rxon_context*, i32)* @iwl_set_rxon_hwcrypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_set_rxon_hwcrypto(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 0
  store %struct.iwl_rxon_cmd* %9, %struct.iwl_rxon_cmd** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* @RXON_FILTER_DIS_DECRYPT_MSK, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @RXON_FILTER_DIS_DECRYPT_MSK, align 4
  %21 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
