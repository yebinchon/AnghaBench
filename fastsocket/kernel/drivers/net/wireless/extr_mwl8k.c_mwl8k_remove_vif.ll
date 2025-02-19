; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_remove_vif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_remove_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { i32 }
%struct.mwl8k_vif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl8k_priv*, %struct.mwl8k_vif*)* @mwl8k_remove_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_remove_vif(%struct.mwl8k_priv* %0, %struct.mwl8k_vif* %1) #0 {
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca %struct.mwl8k_vif*, align 8
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %3, align 8
  store %struct.mwl8k_vif* %1, %struct.mwl8k_vif** %4, align 8
  %5 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %4, align 8
  %12 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %4, align 8
  %21 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %20, i32 0, i32 1
  %22 = call i32 @list_del(i32* %21)
  br label %23

23:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
