; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.iwl_tt_mgmt, i32, i32, i32 }
%struct.iwl_tt_mgmt = type { i32*, i32*, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_tt_exit(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_tt_mgmt*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %4, i32 0, i32 0
  store %struct.iwl_tt_mgmt* %5, %struct.iwl_tt_mgmt** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %7, i32 0, i32 4
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %11, i32 0, i32 3
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 3
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 2
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 1
  %22 = call i32 @cancel_work_sync(i32* %21)
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
