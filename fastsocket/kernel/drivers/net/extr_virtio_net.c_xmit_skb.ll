; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i32, i64, i64, i64 }
%struct.skb_vnet_hdr = type { i64, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i64, i64, i64 }
%struct.scatterlist = type { i32 }
%struct.ethhdr = type { i8* }
%struct.TYPE_5__ = type { i32, i64 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: xmit %p %pM\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i64 0, align 8
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_UDP = common dso_local global i32 0, align 4
@SKB_GSO_TCP_ECN = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_ECN = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, %struct.sk_buff*)* @xmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmit_skb(%struct.virtnet_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.skb_vnet_hdr*, align 8
  %8 = alloca i8*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %10 = add nsw i32 2, %9
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca %struct.scatterlist, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.skb_vnet_hdr* @skb_vnet_hdr(%struct.sk_buff* %14)
  store %struct.skb_vnet_hdr* %15, %struct.skb_vnet_hdr** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ethhdr*
  %20 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %23 = add nsw i32 2, %22
  %24 = call i32 @sg_init_table(%struct.scatterlist* %13, i32 %23)
  %25 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %26 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29, %struct.sk_buff* %30, i8* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %2
  %39 = load i64, i64* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 8
  %40 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  store i64 %39, i64* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i64 @skb_headroom(%struct.sk_buff* %46)
  %48 = sub nsw i64 %45, %47
  %49 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store i64 %48, i64* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %56 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  store i64 %54, i64* %57, align 8
  br label %68

58:                                               ; preds = %2
  %59 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %60 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %63 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %66 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %58, %38
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i64 @skb_is_gso(%struct.sk_buff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %143

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i64 @skb_headlen(%struct.sk_buff* %73)
  %75 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %76 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i64 %81, i64* %84, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %72
  %93 = load i32, i32* @VIRTIO_NET_HDR_GSO_TCPV4, align 4
  %94 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %95 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  br label %127

97:                                               ; preds = %72
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load i32, i32* @VIRTIO_NET_HDR_GSO_TCPV6, align 4
  %107 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %108 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 8
  br label %126

110:                                              ; preds = %97
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SKB_GSO_UDP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load i32, i32* @VIRTIO_NET_HDR_GSO_UDP, align 4
  %120 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %121 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 8
  br label %125

123:                                              ; preds = %110
  %124 = call i32 (...) @BUG()
  br label %125

125:                                              ; preds = %123, %118
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %92
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SKB_GSO_TCP_ECN, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load i32, i32* @VIRTIO_NET_HDR_GSO_ECN, align 4
  %137 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %138 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %127
  br label %154

143:                                              ; preds = %68
  %144 = load i32, i32* @VIRTIO_NET_HDR_GSO_NONE, align 4
  %145 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %146 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 8
  %148 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %149 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %152 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %143, %142
  %155 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %156 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  %158 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %159 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %164 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %163, i32 0, i32 2
  %165 = call i32 @sg_set_buf(%struct.scatterlist* %13, %struct.TYPE_6__* %164, i32 56)
  br label %170

166:                                              ; preds = %154
  %167 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %168 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %167, i32 0, i32 1
  %169 = call i32 @sg_set_buf(%struct.scatterlist* %13, %struct.TYPE_6__* %168, i32 56)
  br label %170

170:                                              ; preds = %166, %162
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i64 1
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @skb_to_sgvec(%struct.sk_buff* %171, %struct.scatterlist* %172, i32 0, i32 %175)
  %177 = add nsw i64 %176, 1
  %178 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %179 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %181 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %184 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %187 = call i32 @virtqueue_add_buf(i32 %182, %struct.scatterlist* %13, i64 %185, i32 0, %struct.sk_buff* %186)
  %188 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %188)
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.skb_vnet_hdr* @skb_vnet_hdr(%struct.sk_buff*) #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #2

declare dso_local i32 @pr_debug(i8*, i32, %struct.sk_buff*, i8*) #2

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #2

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #2

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, %struct.TYPE_6__*, i32) #2

declare dso_local i64 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #2

declare dso_local i32 @virtqueue_add_buf(i32, %struct.scatterlist*, i64, i32, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
