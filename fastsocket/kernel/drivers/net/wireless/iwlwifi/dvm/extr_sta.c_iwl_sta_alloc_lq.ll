; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_sta_alloc_lq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_sta_alloc_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_link_quality_cmd = type { i32 }
%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate memory for LQ cmd.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_link_quality_cmd* (%struct.iwl_priv*, %struct.iwl_rxon_context*, i32)* @iwl_sta_alloc_lq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_link_quality_cmd* @iwl_sta_alloc_lq(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_link_quality_cmd*, align 8
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_link_quality_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.iwl_link_quality_cmd* @kzalloc(i32 4, i32 %9)
  store %struct.iwl_link_quality_cmd* %10, %struct.iwl_link_quality_cmd** %8, align 8
  %11 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %8, align 8
  %12 = icmp ne %struct.iwl_link_quality_cmd* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %15 = call i32 @IWL_ERR(%struct.iwl_priv* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.iwl_link_quality_cmd* null, %struct.iwl_link_quality_cmd** %4, align 8
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %18 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %8, align 8
  %21 = call i32 @iwl_sta_fill_lq(%struct.iwl_priv* %17, %struct.iwl_rxon_context* %18, i32 %19, %struct.iwl_link_quality_cmd* %20)
  %22 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %8, align 8
  store %struct.iwl_link_quality_cmd* %22, %struct.iwl_link_quality_cmd** %4, align 8
  br label %23

23:                                               ; preds = %16, %13
  %24 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %4, align 8
  ret %struct.iwl_link_quality_cmd* %24
}

declare dso_local %struct.iwl_link_quality_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_sta_fill_lq(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32, %struct.iwl_link_quality_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
