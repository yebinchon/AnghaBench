; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_add_rx_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_add_rx_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32 }
%struct.igb_rx_buffer = type { i32, %struct.page* }
%struct.page = type { i32 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IGB_RX_HDR_LEN = common dso_local global i32 0, align 4
@E1000_RXDADV_STAT_TSIP = common dso_local global i32 0, align 4
@IGB_TS_HDR_LEN = common dso_local global i64 0, align 8
@IGB_RX_BUFSZ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_ring*, %struct.igb_rx_buffer*, %union.e1000_adv_rx_desc*, %struct.sk_buff*)* @igb_add_rx_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_add_rx_frag(%struct.igb_ring* %0, %struct.igb_rx_buffer* %1, %union.e1000_adv_rx_desc* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_ring*, align 8
  %7 = alloca %struct.igb_rx_buffer*, align 8
  %8 = alloca %union.e1000_adv_rx_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %6, align 8
  store %struct.igb_rx_buffer* %1, %struct.igb_rx_buffer** %7, align 8
  store %union.e1000_adv_rx_desc* %2, %union.e1000_adv_rx_desc** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %13 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %13, i32 0, i32 1
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %10, align 8
  %16 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %8, align 8
  %17 = bitcast %union.e1000_adv_rx_desc* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @IGB_RX_HDR_LEN, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = call i32 @skb_is_nonlinear(%struct.sk_buff* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = call i8* @page_address(%struct.page* %30)
  %32 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8* %36, i8** %12, align 8
  %37 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %8, align 8
  %38 = load i32, i32* @E1000_RXDADV_STAT_TSIP, align 4
  %39 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %43 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = call i32 @igb_ptp_rx_pktstamp(i32 %44, i8* %45, %struct.sk_buff* %46)
  %48 = load i64, i64* @IGB_TS_HDR_LEN, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %12, align 8
  %51 = load i64, i64* @IGB_TS_HDR_LEN, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %41, %29
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @__skb_put(%struct.sk_buff* %57, i32 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ALIGN(i32 %61, i32 8)
  %63 = call i32 @memcpy(i32 %59, i8* %60, i32 %62)
  %64 = load %struct.page*, %struct.page** %10, align 8
  %65 = call i64 @page_to_nid(%struct.page* %64)
  %66 = call i64 (...) @numa_node_id()
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @likely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %113

72:                                               ; preds = %56
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = call i32 @put_page(%struct.page* %73)
  store i32 0, i32* %5, align 4
  br label %113

75:                                               ; preds = %25, %4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.page*, %struct.page** %10, align 8
  %82 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @IGB_RX_BUFSZ, align 4
  %87 = call i32 @skb_add_rx_frag(%struct.sk_buff* %76, i32 %80, %struct.page* %81, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.page*, %struct.page** %10, align 8
  %89 = call i64 @page_to_nid(%struct.page* %88)
  %90 = call i64 (...) @numa_node_id()
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %113

96:                                               ; preds = %75
  %97 = load %struct.page*, %struct.page** %10, align 8
  %98 = call i32 @page_count(%struct.page* %97)
  %99 = icmp ne i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %113

104:                                              ; preds = %96
  %105 = load i32, i32* @IGB_RX_BUFSZ, align 4
  %106 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %7, align 8
  %107 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = xor i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.page*, %struct.page** %10, align 8
  %111 = getelementptr inbounds %struct.page, %struct.page* %110, i32 0, i32 0
  %112 = call i32 @atomic_set(i32* %111, i32 2)
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %104, %103, %95, %72, %71
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

declare dso_local i32 @igb_ptp_rx_pktstamp(i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @page_to_nid(%struct.page*) #1

declare dso_local i64 @numa_node_id(...) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
