; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_cancel_deferred_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_cancel_deferred_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_cancel_deferred_work(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %3, i32 0, i32 7
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %11 = call i32 @iwlagn_bt_cancel_deferred_work(%struct.iwl_priv* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 6
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 5
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %20 = call i32 @iwl_cancel_scan_deferred_work(%struct.iwl_priv* %19)
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 4
  %23 = call i32 @cancel_work_sync(i32* %22)
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 3
  %26 = call i32 @cancel_work_sync(i32* %25)
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %27, i32 0, i32 2
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 1
  %32 = call i32 @del_timer_sync(i32* %31)
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 0
  %35 = call i32 @del_timer_sync(i32* %34)
  ret void
}

declare dso_local i32 @iwlagn_bt_cancel_deferred_work(%struct.iwl_priv*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @iwl_cancel_scan_deferred_work(%struct.iwl_priv*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
