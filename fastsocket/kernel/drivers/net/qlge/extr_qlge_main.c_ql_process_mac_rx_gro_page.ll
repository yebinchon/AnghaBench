; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_gro_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_gro_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { %struct.napi_struct, i32, i32, i32, i32 }
%struct.napi_struct = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.skb_frag_struct = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.skb_frag_struct* }

@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't get an skb, exiting.\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32)* @ql_process_mac_rx_gro_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_rx_gro_page(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.rx_ring*, align 8
  %8 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.bq_desc*, align 8
  %13 = alloca %struct.skb_frag_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.napi_struct*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %7, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %17 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %18 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %16, %struct.rx_ring* %17)
  store %struct.bq_desc* %18, %struct.bq_desc** %12, align 8
  %19 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %19, i32 0, i32 0
  store %struct.napi_struct* %20, %struct.napi_struct** %15, align 8
  %21 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %22 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %29 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %30 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %33 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %28, i32 %31, %struct.rx_ring* %32)
  %34 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %35 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @put_page(i32 %38)
  br label %161

40:                                               ; preds = %5
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.napi_struct*, %struct.napi_struct** %15, align 8
  %45 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.napi_struct*, %struct.napi_struct** %15, align 8
  %47 = call %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %40
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %52 = load i32, i32* @drv, align 4
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netif_err(%struct.ql_adapter* %51, i32 %52, i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %58 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %62 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @put_page(i32 %65)
  br label %161

67:                                               ; preds = %40
  %68 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %69 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @prefetch(i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %75 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %76, align 8
  store %struct.skb_frag_struct* %77, %struct.skb_frag_struct** %13, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %83, i64 %84
  store %struct.skb_frag_struct* %85, %struct.skb_frag_struct** %13, align 8
  %86 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %87 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %92 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.bq_desc*, %struct.bq_desc** %12, align 8
  %94 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %99 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %102 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %125 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %130 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %135 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 4
  %140 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %145 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @skb_record_rx_queue(%struct.sk_buff* %143, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 65535
  br i1 %149, label %150, label %158

150:                                              ; preds = %67
  %151 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %152 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %151, i32 0, i32 0
  %153 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %154 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @vlan_gro_frags(%struct.napi_struct* %152, i32 %155, i32 %156)
  br label %161

158:                                              ; preds = %67
  %159 = load %struct.napi_struct*, %struct.napi_struct** %15, align 8
  %160 = call i32 @napi_gro_frags(%struct.napi_struct* %159)
  br label %161

161:                                              ; preds = %27, %50, %158, %150
  ret void
}

declare dso_local %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_gro_frags(%struct.napi_struct*, i32, i32) #1

declare dso_local i32 @napi_gro_frags(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
