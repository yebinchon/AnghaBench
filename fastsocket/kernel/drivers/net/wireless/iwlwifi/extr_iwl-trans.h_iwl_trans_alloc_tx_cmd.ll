; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-trans.h_iwl_trans_alloc_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-trans.h_iwl_trans_alloc_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_device_cmd = type { i32 }
%struct.iwl_trans = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_device_cmd* (%struct.iwl_trans*)* @iwl_trans_alloc_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_device_cmd* @iwl_trans_alloc_tx_cmd(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_device_cmd*, align 8
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call i32* @kmem_cache_alloc(i32 %7, i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.iwl_device_cmd* null, %struct.iwl_device_cmd** %2, align 8
  br label %24

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = bitcast i32* %22 to %struct.iwl_device_cmd*
  store %struct.iwl_device_cmd* %23, %struct.iwl_device_cmd** %2, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %2, align 8
  ret %struct.iwl_device_cmd* %25
}

declare dso_local i32* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
