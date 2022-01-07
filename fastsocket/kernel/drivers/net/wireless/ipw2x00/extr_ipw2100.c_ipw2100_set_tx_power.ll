; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host_command = type { i32, i64*, i32, i32 }

@TX_POWER_INDEX = common dso_local global i32 0, align 4
@IPW_TX_POWER_DEFAULT = common dso_local global i64 0, align 8
@IPW_TX_POWER_MIN_DBM = common dso_local global i64 0, align 8
@IPW_TX_POWER_MAX_DBM = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i64)* @ipw2100_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_tx_power(%struct.ipw2100_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.host_command, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 1
  store i64* null, i64** %9, align 8
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 3
  %12 = load i32, i32* @TX_POWER_INDEX, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @IPW_TX_POWER_DEFAULT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @IPW_TX_POWER_MIN_DBM, align 8
  %20 = sub nsw i64 %18, %19
  %21 = mul nsw i64 %20, 16
  %22 = load i64, i64* @IPW_TX_POWER_MAX_DBM, align 8
  %23 = load i64, i64* @IPW_TX_POWER_MIN_DBM, align 8
  %24 = sub nsw i64 %22, %23
  %25 = sdiv i64 %21, %24
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %17, %2
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IW_MODE_ADHOC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %40 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %39, %struct.host_command* %5)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  ret i32 0
}

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
