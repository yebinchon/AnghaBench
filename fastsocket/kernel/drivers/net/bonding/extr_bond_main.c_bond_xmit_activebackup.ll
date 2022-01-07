; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_xmit_activebackup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_xmit_activebackup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bonding = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bond_xmit_activebackup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_xmit_activebackup(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bonding* @netdev_priv(%struct.net_device* %7)
  store %struct.bonding* %8, %struct.bonding** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.bonding*, %struct.bonding** %5, align 8
  %10 = getelementptr inbounds %struct.bonding, %struct.bonding* %9, i32 0, i32 0
  %11 = call i32 @read_lock(i32* %10)
  %12 = load %struct.bonding*, %struct.bonding** %5, align 8
  %13 = getelementptr inbounds %struct.bonding, %struct.bonding* %12, i32 0, i32 1
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.bonding*, %struct.bonding** %5, align 8
  %16 = call i32 @BOND_IS_OK(%struct.bonding* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.bonding*, %struct.bonding** %5, align 8
  %21 = getelementptr inbounds %struct.bonding, %struct.bonding* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %34

25:                                               ; preds = %19
  %26 = load %struct.bonding*, %struct.bonding** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load %struct.bonding*, %struct.bonding** %5, align 8
  %29 = getelementptr inbounds %struct.bonding, %struct.bonding* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bond_dev_queue_xmit(%struct.bonding* %26, %struct.sk_buff* %27, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %25, %24, %18
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32 @dev_kfree_skb(%struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.bonding*, %struct.bonding** %5, align 8
  %42 = getelementptr inbounds %struct.bonding, %struct.bonding* %41, i32 0, i32 1
  %43 = call i32 @read_unlock(i32* %42)
  %44 = load %struct.bonding*, %struct.bonding** %5, align 8
  %45 = getelementptr inbounds %struct.bonding, %struct.bonding* %44, i32 0, i32 0
  %46 = call i32 @read_unlock(i32* %45)
  %47 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %47
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @BOND_IS_OK(%struct.bonding*) #1

declare dso_local i32 @bond_dev_queue_xmit(%struct.bonding*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
