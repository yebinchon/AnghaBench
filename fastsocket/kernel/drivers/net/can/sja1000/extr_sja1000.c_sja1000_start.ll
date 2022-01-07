; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CAN_STATE_STOPPED = common dso_local global i64 0, align 8
@REG_TXERR = common dso_local global i32 0, align 4
@REG_RXERR = common dso_local global i32 0, align 4
@REG_ECC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sja1000_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1000_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.sja1000_priv* %5, %struct.sja1000_priv** %3, align 8
  %6 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %7 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CAN_STATE_STOPPED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @set_reset_mode(%struct.net_device* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %17 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %16, i32 0, i32 1
  %18 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %17, align 8
  %19 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %20 = load i32, i32* @REG_TXERR, align 4
  %21 = call i32 %18(%struct.sja1000_priv* %19, i32 %20, i32 0)
  %22 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %23 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %22, i32 0, i32 1
  %24 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %23, align 8
  %25 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %26 = load i32, i32* @REG_RXERR, align 4
  %27 = call i32 %24(%struct.sja1000_priv* %25, i32 %26, i32 0)
  %28 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %29 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %28, i32 0, i32 0
  %30 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %29, align 8
  %31 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %32 = load i32, i32* @REG_ECC, align 4
  %33 = call i32 %30(%struct.sja1000_priv* %31, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @set_normal_mode(%struct.net_device* %34)
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @set_normal_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
