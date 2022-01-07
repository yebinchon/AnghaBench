; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_tx_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_tx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.enc28j60_net = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ECON1 = common dso_local global i32 0, align 4
@ECON1_TXRTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @enc28j60_tx_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc28j60_tx_clear(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.enc28j60_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.enc28j60_net* @netdev_priv(%struct.net_device* %6)
  store %struct.enc28j60_net* %7, %struct.enc28j60_net** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load %struct.enc28j60_net*, %struct.enc28j60_net** %5, align 8
  %24 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = load %struct.enc28j60_net*, %struct.enc28j60_net** %5, align 8
  %32 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %43

43:                                               ; preds = %30, %27
  %44 = load %struct.enc28j60_net*, %struct.enc28j60_net** %5, align 8
  %45 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %46)
  %48 = load %struct.enc28j60_net*, %struct.enc28j60_net** %5, align 8
  %49 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %48, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %49, align 8
  br label %50

50:                                               ; preds = %43, %22
  %51 = load %struct.enc28j60_net*, %struct.enc28j60_net** %5, align 8
  %52 = load i32, i32* @ECON1, align 4
  %53 = load i32, i32* @ECON1_TXRTS, align 4
  %54 = call i32 @locked_reg_bfclr(%struct.enc28j60_net* %51, i32 %52, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_wake_queue(%struct.net_device* %55)
  ret void
}

declare dso_local %struct.enc28j60_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @locked_reg_bfclr(%struct.enc28j60_net*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
