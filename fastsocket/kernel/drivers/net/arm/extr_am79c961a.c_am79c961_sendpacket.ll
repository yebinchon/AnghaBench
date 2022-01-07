; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_sendpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_sendpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.dev_priv = type { i32, i32, i32*, i32 }

@TX_BUFFERS = common dso_local global i32 0, align 4
@TMD_OWN = common dso_local global i32 0, align 4
@TMD_STP = common dso_local global i32 0, align 4
@TMD_ENP = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@CSR0_TDMD = common dso_local global i32 0, align 4
@CSR0_IENA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @am79c961_sendpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am79c961_sendpacket(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dev_priv* %11, %struct.dev_priv** %5, align 8
  %12 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 %18, 3
  %20 = add i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %22 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @TX_BUFFERS, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @am_writebuffer(%struct.net_device* %35, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @am_writeword(%struct.net_device* %44, i32 %46, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 2
  %55 = load i32, i32* @TMD_OWN, align 4
  %56 = load i32, i32* @TMD_STP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @TMD_ENP, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @am_writeword(%struct.net_device* %52, i32 %54, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %63 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %65 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %64, i32 0, i32 3
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CSR0, align 4
  %72 = load i32, i32* @CSR0_TDMD, align 4
  %73 = load i32, i32* @CSR0_IENA, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @write_rreg(i32 %70, i32 %71, i32 %74)
  %76 = load i32, i32* @jiffies, align 4
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %80 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %79, i32 0, i32 3
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %85 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %88 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 3
  %91 = add i32 %86, %90
  %92 = add i32 %91, 2
  %93 = call i32 @am_readword(%struct.net_device* %83, i32 %92)
  %94 = load i32, i32* @TMD_OWN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %34
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = call i32 @netif_stop_queue(%struct.net_device* %98)
  br label %100

100:                                              ; preds = %97, %34
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = call i32 @dev_kfree_skb(%struct.sk_buff* %101)
  %103 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %103
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @am_writebuffer(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @am_writeword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_rreg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @am_readword(%struct.net_device*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
