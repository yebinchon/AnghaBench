; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.vxlan_sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.vxlanhdr = type { i32, i32 }
%struct.udphdr = type { i64, i32, i8*, i8* }
%struct.iphdr = type { i32 }

@VXLAN_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VXLAN_FLAGS = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxlan_xmit_skb(%struct.net* %0, %struct.vxlan_sock* %1, %struct.rtable* %2, %struct.sk_buff* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i8* %9, i8* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.vxlan_sock*, align 8
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.vxlanhdr*, align 8
  %27 = alloca %struct.udphdr*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.iphdr*, align 8
  store %struct.net* %0, %struct.net** %14, align 8
  store %struct.vxlan_sock* %1, %struct.vxlan_sock** %15, align 8
  store %struct.rtable* %2, %struct.rtable** %16, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32 %11, i32* %25, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %12
  %36 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %12
  %39 = load %struct.rtable*, %struct.rtable** %16, align 8
  %40 = getelementptr inbounds %struct.rtable, %struct.rtable* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @LL_RESERVED_SPACE(i32 %43)
  %45 = load %struct.rtable*, %struct.rtable** %16, align 8
  %46 = getelementptr inbounds %struct.rtable, %struct.rtable* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = load i32, i32* @VXLAN_HLEN, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %56 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = load i32, i32* @VLAN_HLEN, align 4
  br label %61

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = sext i32 %62 to i64
  %64 = add i64 %54, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %28, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %67 = load i32, i32* %28, align 4
  %68 = call i32 @skb_cow_head(%struct.sk_buff* %66, i32 %67)
  store i32 %68, i32* %29, align 4
  %69 = load i32, i32* %29, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %29, align 4
  store i32 %73, i32* %13, align 4
  br label %152

74:                                               ; preds = %61
  %75 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %76 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %81 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %80)
  %82 = call i32 @__vlan_put_tag(%struct.sk_buff* %79, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @WARN_ON(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %152

91:                                               ; preds = %78
  %92 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %74
  %95 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %96 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %95)
  store %struct.iphdr* %96, %struct.iphdr** %30, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %98 = call i64 @__skb_push(%struct.sk_buff* %97, i32 8)
  %99 = inttoptr i64 %98 to %struct.vxlanhdr*
  store %struct.vxlanhdr* %99, %struct.vxlanhdr** %26, align 8
  %100 = load i32, i32* @VXLAN_FLAGS, align 4
  %101 = call i32 @htonl(i32 %100)
  %102 = load %struct.vxlanhdr*, %struct.vxlanhdr** %26, align 8
  %103 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load %struct.vxlanhdr*, %struct.vxlanhdr** %26, align 8
  %106 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %108 = call i64 @__skb_push(%struct.sk_buff* %107, i32 32)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %110 = call i32 @skb_reset_transport_header(%struct.sk_buff* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %112 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %111)
  store %struct.udphdr* %112, %struct.udphdr** %27, align 8
  %113 = load i8*, i8** %24, align 8
  %114 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %115 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** %23, align 8
  %117 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %118 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @htons(i32 %121)
  %123 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %124 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %126 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.vxlan_sock*, %struct.vxlan_sock** %15, align 8
  %128 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %133 = call i32 @vxlan_set_owner(i32 %131, %struct.sk_buff* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %135 = call i32 @handle_offloads(%struct.sk_buff* %134)
  store i32 %135, i32* %29, align 4
  %136 = load i32, i32* %29, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %94
  %139 = load i32, i32* %29, align 4
  store i32 %139, i32* %13, align 4
  br label %152

140:                                              ; preds = %94
  %141 = load %struct.net*, %struct.net** %14, align 8
  %142 = load %struct.rtable*, %struct.rtable** %16, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* @IPPROTO_UDP, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i8*, i8** %22, align 8
  %150 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %151 = call i32 @iptunnel_xmit(%struct.net* %141, %struct.rtable* %142, %struct.sk_buff* %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i8* %149, %struct.iphdr* %150)
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %140, %138, %88, %72
  %153 = load i32, i32* %13, align 4
  ret i32 %153
}

declare dso_local i32 @LL_RESERVED_SPACE(i32) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__vlan_put_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @vxlan_set_owner(i32, %struct.sk_buff*) #1

declare dso_local i32 @handle_offloads(%struct.sk_buff*) #1

declare dso_local i32 @iptunnel_xmit(%struct.net*, %struct.rtable*, %struct.sk_buff*, i32, i32, i32, i32, i32, i8*, %struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
