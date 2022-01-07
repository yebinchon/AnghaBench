; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.igb_ring* }
%struct.igb_ring = type { %struct.TYPE_7__, %struct.sk_buff*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IGB_RX_BUFFER_WRITE = common dso_local global i64 0, align 8
@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_LB = common dso_local global i32 0, align 4
@IGB_RING_FLAG_RX_LB_VLAN_BSWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_q_vector*, i32)* @igb_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_clean_rx_irq(%struct.igb_q_vector* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_q_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.e1000_adv_rx_desc*, align 8
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %13 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.igb_ring*, %struct.igb_ring** %14, align 8
  store %struct.igb_ring* %15, %struct.igb_ring** %5, align 8
  %16 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %17 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %19 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %20 = call i64 @igb_desc_unused(%struct.igb_ring* %19)
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %106, %2
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @IGB_RX_BUFFER_WRITE, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %26, i64 %27)
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %31 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %32 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %30, i32 %33)
  store %union.e1000_adv_rx_desc* %34, %union.e1000_adv_rx_desc** %11, align 8
  %35 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %36 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %37 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %113

40:                                               ; preds = %29
  %41 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %42 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call %struct.sk_buff* @igb_fetch_rx_buffer(%struct.igb_ring* %41, %union.e1000_adv_rx_desc* %42, %struct.sk_buff* %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %113

48:                                               ; preds = %40
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %10, align 8
  %51 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %52 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %53 = call i64 @igb_is_non_eop(%struct.igb_ring* %51, %union.e1000_adv_rx_desc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %106

56:                                               ; preds = %48
  %57 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %58 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i64 @igb_cleanup_headers(%struct.igb_ring* %57, %union.e1000_adv_rx_desc* %58, %struct.sk_buff* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %72 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @igb_process_skb_fields(%struct.igb_ring* %71, %union.e1000_adv_rx_desc* %72, %struct.sk_buff* %73)
  %75 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %76 = load i32, i32* @E1000_RXDEXT_STATERR_LB, align 4
  %77 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %63
  %80 = load i32, i32* @IGB_RING_FLAG_RX_LB_VLAN_BSWAP, align 4
  %81 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %82 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %81, i32 0, i32 2
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %87 = bitcast %union.e1000_adv_rx_desc* %86 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @be16_to_cpu(i32 %90)
  store i64 %91, i64* %9, align 8
  br label %99

92:                                               ; preds = %79, %63
  %93 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %94 = bitcast %union.e1000_adv_rx_desc* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le16_to_cpu(i32 %97)
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %92, %85
  %100 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @igb_receive_skb(%struct.igb_q_vector* %100, %struct.sk_buff* %101, i64 %102)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %99, %62, %55
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ult i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @likely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %21, label %113

113:                                              ; preds = %106, %47, %39
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %116 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %115, i32 0, i32 1
  store %struct.sk_buff* %114, %struct.sk_buff** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %119 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %121, %117
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %125 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, %123
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %131 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add i32 %133, %129
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %137 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, %135
  store i32 %140, i32* %138, align 4
  %141 = load i64, i64* %10, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %113
  %144 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %144, i64 %145)
  br label %147

147:                                              ; preds = %143, %113
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ult i32 %148, %149
  %151 = zext i1 %150 to i32
  ret i32 %151
}

declare dso_local i64 @igb_desc_unused(%struct.igb_ring*) #1

declare dso_local i32 @igb_alloc_rx_buffers(%struct.igb_ring*, i64) #1

declare dso_local %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring*, i32) #1

declare dso_local i64 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

declare dso_local %struct.sk_buff* @igb_fetch_rx_buffer(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @igb_is_non_eop(%struct.igb_ring*, %union.e1000_adv_rx_desc*) #1

declare dso_local i64 @igb_cleanup_headers(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @igb_process_skb_fields(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @igb_receive_skb(%struct.igb_q_vector*, %struct.sk_buff*, i64) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
