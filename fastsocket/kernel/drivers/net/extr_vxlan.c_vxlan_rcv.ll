; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_sock = type { i32 }
%struct.sk_buff = type { i64, i64, i64, i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.vxlan_dev = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vxlan_stats = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@VXLAN_F_LEARN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@log_ecn_error = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"non-ECT from %pI4 with TOS=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_sock*, %struct.sk_buff*, i32)* @vxlan_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_rcv(%struct.vxlan_sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.vxlan_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.vxlan_dev*, align 8
  %9 = alloca %struct.vxlan_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vxlan_sock* %0, %struct.vxlan_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ntohl(i32 %12)
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.vxlan_sock*, %struct.vxlan_sock** %4, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock* %15, i32 %16)
  store %struct.vxlan_dev* %17, %struct.vxlan_dev** %8, align 8
  %18 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %19 = icmp ne %struct.vxlan_dev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %155

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @skb_reset_mac_header(%struct.sk_buff* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %26 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32 @eth_type_trans(%struct.sk_buff* %24, %struct.TYPE_5__* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %36 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @compare_ether_addr(i32 %34, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %155

43:                                               ; preds = %21
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %44)
  store %struct.iphdr* %45, %struct.iphdr** %7, align 8
  %46 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %47 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VXLAN_F_LEARN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @vxlan_snoop(i32 %55, i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %155

66:                                               ; preds = %52, %43
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @skb_reset_network_header(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %81 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %79, %74, %66
  %89 = load i64, i64* @CHECKSUM_NONE, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %79
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %92
  %101 = load i64, i64* @log_ecn_error, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %105 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %104, i32 0, i32 1
  %106 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %105, i32 %108)
  br label %110

110:                                              ; preds = %103, %100
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %115 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %122 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %121, i32 0, i32 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %155

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %128, %92
  %130 = load %struct.vxlan_dev*, %struct.vxlan_dev** %8, align 8
  %131 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.vxlan_stats* @this_cpu_ptr(i32 %132)
  store %struct.vxlan_stats* %133, %struct.vxlan_stats** %9, align 8
  %134 = load %struct.vxlan_stats*, %struct.vxlan_stats** %9, align 8
  %135 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %134, i32 0, i32 0
  %136 = call i32 @u64_stats_update_begin(i32* %135)
  %137 = load %struct.vxlan_stats*, %struct.vxlan_stats** %9, align 8
  %138 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.vxlan_stats*, %struct.vxlan_stats** %9, align 8
  %145 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.vxlan_stats*, %struct.vxlan_stats** %9, align 8
  %151 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %150, i32 0, i32 0
  %152 = call i32 @u64_stats_update_end(i32* %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @netif_rx(%struct.sk_buff* %153)
  br label %158

155:                                              ; preds = %113, %65, %42, %20
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = call i32 @kfree_skb(%struct.sk_buff* %156)
  br label %158

158:                                              ; preds = %155, %129
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i64 @compare_ether_addr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @vxlan_snoop(i32, i32, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32*, i32) #1

declare dso_local %struct.vxlan_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
