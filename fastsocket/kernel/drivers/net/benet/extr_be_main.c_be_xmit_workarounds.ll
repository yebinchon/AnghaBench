; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_xmit_workarounds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_xmit_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i64, i64 }
%struct.sk_buff = type { i32, i64, i32, i64 }
%struct.vlan_ethhdr = type { i64 }
%struct.iphdr = type { i32 }

@ETH_P_8021Q = common dso_local global i64 0, align 8
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@UMC_ENABLED = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.be_adapter*, %struct.sk_buff*, i32*)* @be_xmit_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @be_xmit_workarounds(%struct.be_adapter* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vlan_ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %14, %struct.vlan_ethhdr** %8, align 8
  %15 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %16 = call i32 @BEx_chip(%struct.be_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 32
  br label %23

23:                                               ; preds = %18, %3
  %24 = phi i1 [ false, %3 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i64 @skb_padto(%struct.sk_buff* %29, i32 36)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %168

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store i32 36, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ntohs(i32 %39)
  %41 = load i64, i64* @ETH_P_8021Q, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @VLAN_ETH_HLEN, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @ETH_HLEN, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %9, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 60
  br i1 %52, label %53, label %78

53:                                               ; preds = %47
  %54 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %55 = call i64 @lancer_chip(%struct.be_adapter* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57, %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i64 @is_ipv4_pkt(%struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i64 @ip_hdr(%struct.sk_buff* %66)
  %68 = inttoptr i64 %67 to %struct.iphdr*
  store %struct.iphdr* %68, %struct.iphdr** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ntohs(i32 %74)
  %76 = add nsw i64 %71, %75
  %77 = call i32 @pskb_trim(%struct.sk_buff* %69, i64 %76)
  br label %78

78:                                               ; preds = %65, %61, %57, %47
  %79 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @UMC_ENABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %8, align 8
  %87 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ETH_P_8021Q, align 8
  %90 = call i64 @htons(i64 %89)
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32*, i32** %7, align 8
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %85, %78
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter* %105, %struct.sk_buff* %106, i32* %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %6, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %168

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %100, %94
  %118 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call i64 @be_ipv6_tx_stall_chk(%struct.be_adapter* %118, %struct.sk_buff* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %124 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %129 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127, %122
  %133 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %134 = call i32 @qnq_async_evt_rcvd(%struct.be_adapter* %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br label %137

137:                                              ; preds = %132, %127, %117
  %138 = phi i1 [ false, %127 ], [ false, %117 ], [ %136, %132 ]
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %168

143:                                              ; preds = %137
  %144 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = call i64 @be_ipv6_tx_stall_chk(%struct.be_adapter* %144, %struct.sk_buff* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %143
  %149 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = call i64 @be_vlan_tag_tx_chk(%struct.be_adapter* %149, %struct.sk_buff* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = call %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter* %154, %struct.sk_buff* %155, i32* %156)
  store %struct.sk_buff* %157, %struct.sk_buff** %6, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = icmp ne %struct.sk_buff* %158, null
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %168

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %148, %143
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %167, %struct.sk_buff** %4, align 8
  br label %171

168:                                              ; preds = %164, %142, %115, %32
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %169)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %171

171:                                              ; preds = %168, %166
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %172
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @is_ipv4_pkt(%struct.sk_buff*) #1

declare dso_local i64 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i64 @htons(i64) #1

declare dso_local %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i64 @be_ipv6_tx_stall_chk(%struct.be_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @qnq_async_evt_rcvd(%struct.be_adapter*) #1

declare dso_local i64 @be_vlan_tag_tx_chk(%struct.be_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
