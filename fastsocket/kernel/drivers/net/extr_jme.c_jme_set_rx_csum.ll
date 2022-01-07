; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32, i32 }

@RXMCS_CHECKSUM = common dso_local global i32 0, align 4
@JME_RXMCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @jme_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_set_rx_csum(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.jme_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.jme_adapter* %7, %struct.jme_adapter** %5, align 8
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @RXMCS_CHECKSUM, align 4
  %15 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @RXMCS_CHECKSUM, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %28 = load i32, i32* @JME_RXMCS, align 4
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @jwrite32(%struct.jme_adapter* %27, i32 %28, i32 %31)
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  ret i32 0
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
