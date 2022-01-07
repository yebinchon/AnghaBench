; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_selftest.c_efx_begin_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_selftest.c_efx_begin_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, %struct.efx_loopback_state* }
%struct.efx_loopback_state = type { i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.efx_loopback_payload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"TX queue %d could not transmit packet %d of %d in %s loopback test\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*)* @efx_begin_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_begin_loopback(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_loopback_state*, align 8
  %6 = alloca %struct.efx_loopback_payload*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 1
  %12 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  store %struct.efx_nic* %12, %struct.efx_nic** %4, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 1
  %15 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %14, align 8
  store %struct.efx_loopback_state* %15, %struct.efx_loopback_state** %5, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %92, %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %19 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %95

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %96

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %33 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %32, i32 0, i32 2
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %36
  store %struct.sk_buff* %31, %struct.sk_buff** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @skb_get(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i64 @skb_put(%struct.sk_buff* %40, i32 4)
  %42 = inttoptr i64 %41 to %struct.efx_loopback_payload*
  store %struct.efx_loopback_payload* %42, %struct.efx_loopback_payload** %6, align 8
  %43 = load %struct.efx_loopback_payload*, %struct.efx_loopback_payload** %6, align 8
  %44 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %45 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %44, i32 0, i32 1
  %46 = call i32 @memcpy(%struct.efx_loopback_payload* %43, i32* %45, i32 4)
  %47 = load i32, i32* @INADDR_LOOPBACK, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 2
  %50 = or i32 %47, %49
  %51 = call i32 @htonl(i32 %50)
  %52 = load %struct.efx_loopback_payload*, %struct.efx_loopback_payload** %6, align 8
  %53 = getelementptr inbounds %struct.efx_loopback_payload, %struct.efx_loopback_payload* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = call i32 (...) @smp_wmb()
  %56 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_tx_lock_bh(i32 %58)
  %60 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @efx_enqueue_skb(%struct.efx_tx_queue* %60, %struct.sk_buff* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netif_tx_unlock_bh(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @NETDEV_TX_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %30
  %71 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %72 = load i32, i32* @drv, align 4
  %73 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %77 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %82 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %85 = call i32 @LOOPBACK_MODE(%struct.efx_nic* %84)
  %86 = call i32 @netif_err(%struct.efx_nic* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %80, i32 %83, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  %89 = load i32, i32* @EPIPE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %96

91:                                               ; preds = %30
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %16

95:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %70, %27
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.efx_loopback_payload*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @efx_enqueue_skb(%struct.efx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @LOOPBACK_MODE(%struct.efx_nic*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
