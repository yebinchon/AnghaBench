; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_encap_bypass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_encap_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_5__*, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vxlan_dev = type { i32, %struct.TYPE_5__*, i32 }
%struct.vxlan_stats = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@PACKET_HOST = common dso_local global i32 0, align 4
@VXLAN_F_LEARN = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.vxlan_dev*, %struct.vxlan_dev*)* @vxlan_encap_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_encap_bypass(%struct.sk_buff* %0, %struct.vxlan_dev* %1, %struct.vxlan_dev* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.vxlan_dev*, align 8
  %7 = alloca %struct.vxlan_stats*, align 8
  %8 = alloca %struct.vxlan_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.vxlan_dev* %1, %struct.vxlan_dev** %5, align 8
  store %struct.vxlan_dev* %2, %struct.vxlan_dev** %6, align 8
  %9 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %10 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.vxlan_stats* @this_cpu_ptr(i32 %11)
  store %struct.vxlan_stats* %12, %struct.vxlan_stats** %7, align 8
  %13 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %14 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.vxlan_stats* @this_cpu_ptr(i32 %15)
  store %struct.vxlan_stats* %16, %struct.vxlan_stats** %8, align 8
  %17 = load i32, i32* @PACKET_HOST, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %23 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @skb_network_offset(%struct.sk_buff* %28)
  %30 = call i32 @__skb_pull(%struct.sk_buff* %27, i32 %29)
  %31 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %32 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VXLAN_F_LEARN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* @INADDR_LOOPBACK, align 4
  %42 = call i32 @htonl(i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vxlan_snoop(%struct.TYPE_5__* %40, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %37, %3
  %49 = load %struct.vxlan_stats*, %struct.vxlan_stats** %7, align 8
  %50 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %49, i32 0, i32 0
  %51 = call i32 @u64_stats_update_begin(i32* %50)
  %52 = load %struct.vxlan_stats*, %struct.vxlan_stats** %7, align 8
  %53 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vxlan_stats*, %struct.vxlan_stats** %7, align 8
  %60 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.vxlan_stats*, %struct.vxlan_stats** %7, align 8
  %66 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %65, i32 0, i32 0
  %67 = call i32 @u64_stats_update_end(i32* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i64 @netif_rx(%struct.sk_buff* %68)
  %70 = load i64, i64* @NET_RX_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %48
  %73 = load %struct.vxlan_stats*, %struct.vxlan_stats** %8, align 8
  %74 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %73, i32 0, i32 0
  %75 = call i32 @u64_stats_update_begin(i32* %74)
  %76 = load %struct.vxlan_stats*, %struct.vxlan_stats** %8, align 8
  %77 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.vxlan_stats*, %struct.vxlan_stats** %8, align 8
  %84 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.vxlan_stats*, %struct.vxlan_stats** %8, align 8
  %90 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %89, i32 0, i32 0
  %91 = call i32 @u64_stats_update_end(i32* %90)
  br label %100

92:                                               ; preds = %48
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %72
  ret void
}

declare dso_local %struct.vxlan_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @vxlan_snoop(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
