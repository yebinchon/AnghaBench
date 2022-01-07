; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.netdrv_private = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i64, %struct.sk_buff* }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@TxStatus0 = common dso_local global i64 0, align 8
@ETH_ZLEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: Queued Tx packet at %p size %u to slot %d.\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @netdrv_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdrv_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdrv_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %8)
  store %struct.netdrv_private* %9, %struct.netdrv_private** %5, align 8
  %10 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %11 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %10, i32 0, i32 5
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %14 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %13, i32 0, i32 2
  %15 = call i32 @atomic_read(i32* %14)
  %16 = load i32, i32* @NUM_TX_DESC, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %19 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %30 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %42 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.sk_buff* %40, %struct.sk_buff** %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %50 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %48, i32 %55, i32 %58)
  %60 = load i64, i64* @TxStatus0, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = add i64 %60, %63
  %65 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %66 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ETH_ZLEN, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %2
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %79

77:                                               ; preds = %2
  %78 = load i32, i32* @ETH_ZLEN, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %76, %73 ], [ %78, %77 ]
  %81 = or i32 %67, %80
  %82 = call i32 @NETDRV_W32(i64 %64, i32 %81)
  %83 = load i32, i32* @jiffies, align 4
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %87 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %86, i32 0, i32 2
  %88 = call i32 @atomic_inc(i32* %87)
  %89 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %90 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %89, i32 0, i32 2
  %91 = call i32 @atomic_read(i32* %90)
  %92 = load %struct.netdrv_private*, %struct.netdrv_private** %5, align 8
  %93 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %92, i32 0, i32 1
  %94 = call i32 @atomic_read(i32* %93)
  %95 = sub nsw i32 %91, %94
  %96 = load i32, i32* @NUM_TX_DESC, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %79
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netif_stop_queue(%struct.net_device* %99)
  br label %101

101:                                              ; preds = %98, %79
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %111)
  %113 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %113
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NETDRV_W32(i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
