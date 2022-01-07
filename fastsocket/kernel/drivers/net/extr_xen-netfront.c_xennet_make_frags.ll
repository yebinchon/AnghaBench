; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_make_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_make_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.net_device = type { i32 }
%struct.xen_netif_tx_request = type { i32, i32, i32, i32, i8* }
%struct.netfront_info = type { %struct.TYPE_10__, i8**, %struct.TYPE_6__*, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NETTXF_more_data = common dso_local global i32 0, align 4
@GNTMAP_readonly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.xen_netif_tx_request*)* @xennet_make_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_make_frags(%struct.sk_buff* %0, %struct.net_device* %1, %struct.xen_netif_tx_request* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xen_netif_tx_request*, align 8
  %7 = alloca %struct.netfront_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.xen_netif_tx_request* %2, %struct.xen_netif_tx_request** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.netfront_info* @netdev_priv(%struct.net_device* %18)
  store %struct.netfront_info* %19, %struct.netfront_info** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %24 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @offset_in_page(i8* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @skb_headlen(%struct.sk_buff* %33)
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %41, %3
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sub i32 %37, %38
  %40 = icmp ugt i32 %36, %39
  br i1 %40, label %41, label %124

41:                                               ; preds = %35
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 %42, %43
  %45 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %46 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @NETTXF_more_data, align 4
  %48 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %49 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %53 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %58 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %8, align 8
  store i32 0, i32* %12, align 4
  %63 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %64 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %63, i32 0, i32 5
  %65 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %66 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %65, i32 0, i32 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 @get_id_from_freelist(i32* %64, %struct.TYPE_9__* %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i8* @skb_get(%struct.sk_buff* %69)
  %71 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %72 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %71, i32 0, i32 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i8* %70, i8** %77, align 8
  %78 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %79 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %78, i32 0, i32 0
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %10, align 8
  %82 = trunc i64 %80 to i32
  %83 = call %struct.xen_netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_10__* %79, i32 %82)
  store %struct.xen_netif_tx_request* %83, %struct.xen_netif_tx_request** %6, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %86 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %88 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %87, i32 0, i32 3
  %89 = call i8* @gnttab_claim_grant_reference(i32* %88)
  store i8* %89, i8** %15, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = ptrtoint i8* %90 to i16
  %92 = sext i16 %91 to i32
  %93 = icmp slt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @virt_to_mfn(i8* %96)
  store i64 %97, i64* %9, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %100 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* @GNTMAP_readonly, align 4
  %106 = call i32 @gnttab_grant_foreign_access_ref(i8* %98, i32 %103, i64 %104, i32 %105)
  %107 = load i8*, i8** %15, align 8
  %108 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %109 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %107, i8** %113, align 8
  %114 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %115 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %114, i32 0, i32 4
  store i8* %107, i8** %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %118 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %121 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %123 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %122, i32 0, i32 3
  store i32 0, i32* %123, align 4
  br label %35

124:                                              ; preds = %35
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %210, %124
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %213

129:                                              ; preds = %125
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %17, align 8
  %137 = load i32, i32* @NETTXF_more_data, align 4
  %138 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %139 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %143 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %142, i32 0, i32 5
  %144 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %145 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %144, i32 0, i32 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = call i32 @get_id_from_freelist(i32* %143, %struct.TYPE_9__* %146)
  store i32 %147, i32* %14, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i8* @skb_get(%struct.sk_buff* %148)
  %150 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %151 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %150, i32 0, i32 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i8* %149, i8** %156, align 8
  %157 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %158 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %157, i32 0, i32 0
  %159 = load i64, i64* %10, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %10, align 8
  %161 = trunc i64 %159 to i32
  %162 = call %struct.xen_netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_10__* %158, i32 %161)
  store %struct.xen_netif_tx_request* %162, %struct.xen_netif_tx_request** %6, align 8
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %165 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %167 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %166, i32 0, i32 3
  %168 = call i8* @gnttab_claim_grant_reference(i32* %167)
  store i8* %168, i8** %15, align 8
  %169 = load i8*, i8** %15, align 8
  %170 = ptrtoint i8* %169 to i16
  %171 = sext i16 %170 to i32
  %172 = icmp slt i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @BUG_ON(i32 %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @page_to_pfn(i32 %177)
  %179 = call i64 @pfn_to_mfn(i32 %178)
  store i64 %179, i64* %9, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %182 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %181, i32 0, i32 2
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* %9, align 8
  %187 = load i32, i32* @GNTMAP_readonly, align 4
  %188 = call i32 @gnttab_grant_foreign_access_ref(i8* %180, i32 %185, i64 %186, i32 %187)
  %189 = load i8*, i8** %15, align 8
  %190 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %191 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %190, i32 0, i32 1
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %189, i8** %195, align 8
  %196 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %197 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %196, i32 0, i32 4
  store i8* %189, i8** %197, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %202 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %207 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %209 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %208, i32 0, i32 3
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %129
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %125

213:                                              ; preds = %125
  %214 = load i64, i64* %10, align 8
  %215 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %216 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  store i64 %214, i64* %217, align 8
  ret void
}

declare dso_local %struct.netfront_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @get_id_from_freelist(i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @skb_get(%struct.sk_buff*) #1

declare dso_local %struct.xen_netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @gnttab_claim_grant_reference(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @virt_to_mfn(i8*) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i8*, i32, i64, i32) #1

declare dso_local i64 @pfn_to_mfn(i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
