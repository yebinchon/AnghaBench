; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_recv_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_recv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_netvsc_packet = type { i32, i32, i32, i8* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.netvsc_device = type { %struct.net_device* }

@.str = private unnamed_addr constant [57 x i8] c"got receive callback but net device not initialized yet\0A\00", align 1
@NVSP_STAT_FAIL = common dso_local global i8* null, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netvsc_recv_callback(%struct.hv_device* %0, %struct.hv_netvsc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_netvsc_packet*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_netvsc_packet* %1, %struct.hv_netvsc_packet** %5, align 8
  %8 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %9 = call i64 @hv_get_drvdata(%struct.hv_device* %8)
  %10 = inttoptr i64 %9 to %struct.netvsc_device*
  %11 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** @NVSP_STAT_FAIL, align 8
  %19 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %20 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  store i32 0, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %24 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %22, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i8*, i8** @NVSP_STAT_FAIL, align 8
  %40 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %41 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %3, align 4
  br label %83

42:                                               ; preds = %21
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %45 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @skb_put(%struct.sk_buff* %43, i32 %46)
  %48 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %49 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %52 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32 %47, i32 %50, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @eth_type_trans(%struct.sk_buff* %55, %struct.net_device* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @CHECKSUM_NONE, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %64 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %5, align 8
  %74 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @netif_rx(%struct.sk_buff* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %42, %33, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
