; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { %struct.TYPE_6__, %struct.ixgbe_adapter* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ixgbe_adapter = type { i32 }
%struct.ixgbe_ring = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%union.ixgbe_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i64 }

@IXGBE_RX_BUFFER_WRITE = common dso_local global i64 0, align 8
@IXGBE_RXD_STAT_DD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_q_vector*, %struct.ixgbe_ring*, i32)* @ixgbe_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_clean_rx_irq(%struct.ixgbe_q_vector* %0, %struct.ixgbe_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_q_vector*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %13 = call i64 @ixgbe_desc_unused(%struct.ixgbe_ring* %12)
  store i64 %13, i64* %9, align 8
  br label %14

14:                                               ; preds = %75, %3
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @IXGBE_RX_BUFFER_WRITE, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %19, i64 %20)
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %23, i32 %26)
  store %union.ixgbe_adv_rx_desc* %27, %union.ixgbe_adv_rx_desc** %10, align 8
  %28 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  %29 = load i32, i32* @IXGBE_RXD_STAT_DD, align 4
  %30 = call i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %82

33:                                               ; preds = %22
  %34 = call i32 (...) @rmb()
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %36 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  %37 = call %struct.sk_buff* @ixgbe_fetch_rx_buffer(%struct.ixgbe_ring* %35, %union.ixgbe_adv_rx_desc* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %11, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %82

41:                                               ; preds = %33
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %9, align 8
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %45 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = call i64 @ixgbe_is_non_eop(%struct.ixgbe_ring* %44, %union.ixgbe_adv_rx_desc* %45, %struct.sk_buff* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %75

50:                                               ; preds = %41
  %51 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %52 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = call i64 @ixgbe_cleanup_headers(%struct.ixgbe_ring* %51, %union.ixgbe_adv_rx_desc* %52, %struct.sk_buff* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %75

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %66 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = call i32 @ixgbe_process_skb_fields(%struct.ixgbe_ring* %65, %union.ixgbe_adv_rx_desc* %66, %struct.sk_buff* %67)
  %69 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  %72 = call i32 @ixgbe_rx_skb(%struct.ixgbe_q_vector* %69, %struct.sk_buff* %70, %union.ixgbe_adv_rx_desc* %71)
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %57, %56, %49
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ult i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %14, label %82

82:                                               ; preds = %75, %40, %32
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %85 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %91 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %97 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %103 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %82
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %110, i64 %111)
  br label %113

113:                                              ; preds = %109, %82
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ult i32 %114, %115
  %117 = zext i1 %116 to i32
  ret i32 %117
}

declare dso_local i64 @ixgbe_desc_unused(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring*, i64) #1

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring*, i32) #1

declare dso_local i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.sk_buff* @ixgbe_fetch_rx_buffer(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*) #1

declare dso_local i64 @ixgbe_is_non_eop(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @ixgbe_cleanup_headers(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_process_skb_fields(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_skb(%struct.ixgbe_q_vector*, %struct.sk_buff*, %union.ixgbe_adv_rx_desc*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
