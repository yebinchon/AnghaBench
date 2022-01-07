; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_udp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_udp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vxlan_sock = type { i32 (%struct.vxlan_sock*, %struct.sk_buff.0*, i32)* }
%struct.sk_buff.0 = type opaque
%struct.vxlanhdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VXLAN_HLEN = common dso_local global i32 0, align 4
@VXLAN_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid vxlan flags=%#x vni=%#x\0A\00", align 1
@ETH_P_TEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @vxlan_udp_encap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_udp_encap_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vxlan_sock*, align 8
  %7 = alloca %struct.vxlanhdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @VXLAN_HLEN, align 4
  %11 = call i32 @pskb_may_pull(%struct.sk_buff* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @udp_hdr(%struct.sk_buff* %15)
  %17 = add nsw i64 %16, 1
  %18 = inttoptr i64 %17 to %struct.vxlanhdr*
  store %struct.vxlanhdr* %18, %struct.vxlanhdr** %7, align 8
  %19 = load %struct.vxlanhdr*, %struct.vxlanhdr** %7, align 8
  %20 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VXLAN_FLAGS, align 4
  %23 = call i32 @htonl(i32 %22)
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = load %struct.vxlanhdr*, %struct.vxlanhdr** %7, align 8
  %27 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @htonl(i32 255)
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25, %14
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vxlanhdr*, %struct.vxlanhdr** %7, align 8
  %37 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohl(i32 %38)
  %40 = load %struct.vxlanhdr*, %struct.vxlanhdr** %7, align 8
  %41 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  %44 = call i32 @netdev_dbg(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43)
  br label %79

45:                                               ; preds = %25
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* @VXLAN_HLEN, align 4
  %48 = load i32, i32* @ETH_P_TEB, align 4
  %49 = call i32 @htons(i32 %48)
  %50 = call i64 @iptunnel_pull_header(%struct.sk_buff* %46, i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %76

53:                                               ; preds = %45
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = call i32 @sock_net(%struct.sock* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.vxlan_sock* @vxlan_find_sock(i32 %59, i32 %60)
  store %struct.vxlan_sock* %61, %struct.vxlan_sock** %6, align 8
  %62 = load %struct.vxlan_sock*, %struct.vxlan_sock** %6, align 8
  %63 = icmp ne %struct.vxlan_sock* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  br label %76

65:                                               ; preds = %53
  %66 = load %struct.vxlan_sock*, %struct.vxlan_sock** %6, align 8
  %67 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %66, i32 0, i32 0
  %68 = load i32 (%struct.vxlan_sock*, %struct.sk_buff.0*, i32)*, i32 (%struct.vxlan_sock*, %struct.sk_buff.0*, i32)** %67, align 8
  %69 = load %struct.vxlan_sock*, %struct.vxlan_sock** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = bitcast %struct.sk_buff* %70 to %struct.sk_buff.0*
  %72 = load %struct.vxlanhdr*, %struct.vxlanhdr** %7, align 8
  %73 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %68(%struct.vxlan_sock* %69, %struct.sk_buff.0* %71, i32 %74)
  store i32 0, i32* %3, align 4
  br label %80

76:                                               ; preds = %64, %52
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  store i32 0, i32* %3, align 4
  br label %80

79:                                               ; preds = %32, %13
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %76, %65
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @iptunnel_pull_header(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.vxlan_sock* @vxlan_find_sock(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
