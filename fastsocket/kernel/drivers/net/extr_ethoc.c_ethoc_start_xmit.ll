; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32, i32 }
%struct.ethoc = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethoc_bd = type { i32, i32 }

@ETHOC_BUFSIZ = common dso_local global i64 0, align 8
@ETHOC_ZLEN = common dso_local global i64 0, align 8
@TX_BD_PAD = common dso_local global i32 0, align 4
@TX_BD_STATS = common dso_local global i32 0, align 4
@TX_BD_LEN_MASK = common dso_local global i32 0, align 4
@TX_BD_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stopping queue\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ethoc_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethoc*, align 8
  %6 = alloca %struct.ethoc_bd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ethoc* @netdev_priv(%struct.net_device* %9)
  store %struct.ethoc* %10, %struct.ethoc** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETHOC_BUFSIZ, align 8
  %15 = icmp sgt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %21 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %122

25:                                               ; preds = %2
  %26 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %27 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %30 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = urem i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %34 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %33, i32 0, i32 3
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %37 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ethoc_read_bd(%struct.ethoc* %40, i32 %41, %struct.ethoc_bd* %6)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ETHOC_ZLEN, align 8
  %47 = icmp slt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %25
  %52 = load i32, i32* @TX_BD_PAD, align 4
  %53 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %62

56:                                               ; preds = %25
  %57 = load i32, i32* @TX_BD_PAD, align 4
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %51
  %63 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @phys_to_virt(i32 %64)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @memcpy_toio(i8* %66, i32 %69, i64 %72)
  %74 = load i32, i32* @TX_BD_STATS, align 4
  %75 = load i32, i32* @TX_BD_LEN_MASK, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @TX_BD_LEN(i64 %83)
  %85 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ethoc_write_bd(%struct.ethoc* %88, i32 %89, %struct.ethoc_bd* %6)
  %91 = load i32, i32* @TX_BD_READY, align 4
  %92 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ethoc_write_bd(%struct.ethoc* %95, i32 %96, %struct.ethoc_bd* %6)
  %98 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %99 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %102 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %105 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %103, %106
  %108 = icmp eq i32 %100, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %62
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = call i32 @dev_dbg(i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 @netif_stop_queue(%struct.net_device* %113)
  br label %115

115:                                              ; preds = %109, %62
  %116 = load i32, i32* @jiffies, align 4
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %120 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %119, i32 0, i32 3
  %121 = call i32 @spin_unlock_irq(i32* %120)
  br label %122

122:                                              ; preds = %115, %19
  %123 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %124 = call i32 @dev_kfree_skb(%struct.sk_buff* %123)
  %125 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %125
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ethoc_read_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @memcpy_toio(i8*, i32, i64) #1

declare dso_local i32 @TX_BD_LEN(i64) #1

declare dso_local i32 @ethoc_write_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
