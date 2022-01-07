; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_tx_flip_ownership.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_tx_flip_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NV_TX2_VALID = common dso_local global i32 0, align 4
@NVREG_TXRXCTL_KICK = common dso_local global i32 0, align 4
@NvRegTxRxControl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nv_tx_flip_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_tx_flip_ownership(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.fe_priv* %5, %struct.fe_priv** %3, align 8
  %6 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %7 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 8
  %10 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %11 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = load i32, i32* @NV_TX2_VALID, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  %17 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %18 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %16
  store i32 %24, i32* %22, align 4
  %25 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %26 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %30 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %35 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %34, i32 0, i32 1
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %37 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %40 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp eq %struct.TYPE_4__* %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %14
  %44 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %45 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %44, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %45, align 8
  br label %46

46:                                               ; preds = %43, %14
  %47 = load i32, i32* @NVREG_TXRXCTL_KICK, align 4
  %48 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %49 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %47, %50
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i64 @get_hwbase(%struct.net_device* %52)
  %54 = load i64, i64* @NvRegTxRxControl, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %51, i64 %55)
  br label %57

57:                                               ; preds = %46, %1
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @get_hwbase(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
