; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_IXSM = common dso_local global i32 0, align 4
@IGB_RING_FLAG_RX_CSUM = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_TCPE = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_IPE = common dso_local global i32 0, align 4
@IGB_RING_FLAG_RX_SCTP_CSUM = common dso_local global i32 0, align 4
@E1000_RXD_STAT_TCPCS = common dso_local global i32 0, align 4
@E1000_RXD_STAT_UDPCS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cksum success: bits %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*)* @igb_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_rx_checksum(%struct.igb_ring* %0, %union.e1000_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %union.e1000_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %union.e1000_adv_rx_desc* %1, %union.e1000_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load i32, i32* @CHECKSUM_NONE, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %11 = load i32, i32* @E1000_RXD_STAT_IXSM, align 4
  %12 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %69

15:                                               ; preds = %3
  %16 = load i32, i32* @IGB_RING_FLAG_RX_CSUM, align 4
  %17 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %18 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %17, i32 0, i32 2
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %69

22:                                               ; preds = %15
  %23 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %24 = load i32, i32* @E1000_RXDEXT_STATERR_TCPE, align 4
  %25 = load i32, i32* @E1000_RXDEXT_STATERR_IPE, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 60
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @IGB_RING_FLAG_RX_SCTP_CSUM, align 4
  %36 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %37 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %42 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %34
  br label %69

47:                                               ; preds = %22
  %48 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %49 = load i32, i32* @E1000_RXD_STAT_TCPCS, align 4
  %50 = load i32, i32* @E1000_RXD_STAT_UDPCS, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %60 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %63 = bitcast %union.e1000_adv_rx_desc* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %58, %46, %21, %14
  ret void
}

declare dso_local i64 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
