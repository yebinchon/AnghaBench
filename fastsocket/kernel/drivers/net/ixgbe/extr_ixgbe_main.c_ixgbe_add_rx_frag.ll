; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_add_rx_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_add_rx_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_rx_buffer = type { i32, %struct.page* }
%struct.page = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IXGBE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbe_add_rx_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_add_rx_frag(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1, %union.ixgbe_adv_rx_desc* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_ring*, align 8
  %7 = alloca %struct.ixgbe_rx_buffer*, align 8
  %8 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %6, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %7, align 8
  store %union.ixgbe_adv_rx_desc* %2, %union.ixgbe_adv_rx_desc** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %14 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %15 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %14, i32 0, i32 1
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %10, align 8
  %17 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %8, align 8
  %18 = bitcast %union.ixgbe_adv_rx_desc* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %24 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @IXGBE_RX_HDR_SIZE, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = call i32 @skb_is_nonlinear(%struct.sk_buff* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %28
  %33 = load %struct.page*, %struct.page** %10, align 8
  %34 = call i8* @page_address(%struct.page* %33)
  %35 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %13, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @__skb_put(%struct.sk_buff* %40, i32 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ALIGN(i32 %44, i32 8)
  %46 = call i32 @memcpy(i32 %42, i8* %43, i32 %45)
  %47 = load %struct.page*, %struct.page** %10, align 8
  %48 = call i64 @page_to_nid(%struct.page* %47)
  %49 = call i64 (...) @numa_node_id()
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %96

55:                                               ; preds = %32
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = call i32 @put_page(%struct.page* %56)
  store i32 0, i32* %5, align 4
  br label %96

58:                                               ; preds = %28, %4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.page*, %struct.page** %10, align 8
  %65 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %66 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @skb_add_rx_frag(%struct.sk_buff* %59, i32 %63, %struct.page* %64, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.page*, %struct.page** %10, align 8
  %72 = call i64 @page_to_nid(%struct.page* %71)
  %73 = call i64 (...) @numa_node_id()
  %74 = icmp ne i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %96

79:                                               ; preds = %58
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = call i32 @page_count(%struct.page* %80)
  %82 = icmp ne i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %96

87:                                               ; preds = %79
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %90 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = xor i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.page*, %struct.page** %10, align 8
  %94 = getelementptr inbounds %struct.page, %struct.page* %93, i32 0, i32 0
  %95 = call i32 @atomic_set(i32* %94, i32 2)
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %87, %86, %78, %55, %54
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i8* @page_address(%struct.page*) #1

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
