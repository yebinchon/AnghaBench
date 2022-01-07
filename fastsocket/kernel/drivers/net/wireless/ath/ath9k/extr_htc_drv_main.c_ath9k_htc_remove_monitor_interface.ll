; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_remove_monitor_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_remove_monitor_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32*, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@WMI_NODE_REMOVE_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to remove station entry for monitor mode\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Removed a monitor interface at idx: %d, sta idx: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*)* @ath9k_htc_remove_monitor_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__* %10)
  store %struct.ath_common* %11, %struct.ath_common** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %13 = call i32 @__ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv* %12)
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @WMI_NODE_REMOVE_CMDID, align 4
  %23 = call i32 @WMI_CMD_BUF(i32 %22, i32* %7)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %28 = call i32 @ath_err(%struct.ath_common* %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %53

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %47 = load i32, i32* @CONFIG, align 4
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ath_dbg(%struct.ath_common* %46, i32 %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %30, %26
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__*) #1

declare dso_local i32 @__ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
