; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_rf_kill_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_rf_kill_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STATUS_RF_KILL_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @rf_kill_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf_kill_active(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %4 = call i32 @ipw_read32(%struct.ipw_priv* %3, i32 48)
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 0, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wiphy_rfkill_set_hw_state(i32 %18, i32 1)
  br label %34

20:                                               ; preds = %1
  %21 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wiphy_rfkill_set_hw_state(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %20, %7
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  ret i32 %42
}

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
