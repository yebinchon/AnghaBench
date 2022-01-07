; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-trans.h_iwl_trans_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-trans.h_iwl_trans_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.iwl_trans*, %struct.iwl_trans_config*)* }
%struct.iwl_trans_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_trans_config*)* @iwl_trans_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_configure(%struct.iwl_trans* %0, %struct.iwl_trans_config* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_config*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_trans_config* %1, %struct.iwl_trans_config** %4, align 8
  %5 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %6 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.iwl_trans*, %struct.iwl_trans_config*)*, i32 (%struct.iwl_trans*, %struct.iwl_trans_config*)** %13, align 8
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %17 = call i32 %14(%struct.iwl_trans* %15, %struct.iwl_trans_config* %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
