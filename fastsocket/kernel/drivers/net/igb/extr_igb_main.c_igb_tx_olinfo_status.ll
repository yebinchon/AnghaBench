; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_tx_olinfo_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_tx_olinfo_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32, i32 }

@E1000_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@IGB_RING_FLAG_TX_CTX_IDX = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@E1000_TXD_POPTS_TXSM = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@E1000_TXD_POPTS_IXSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.igb_ring*)* @igb_tx_olinfo_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_tx_olinfo_status(i32 %0, i32 %1, %struct.igb_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_ring*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.igb_ring* %2, %struct.igb_ring** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @E1000_ADVTXD_PAYLEN_SHIFT, align 4
  %10 = shl i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @IGB_RING_FLAG_TX_CTX_IDX, align 4
  %12 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %13 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.igb_ring*, %struct.igb_ring** %6, align 8
  %18 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IGB_TX_FLAGS_CSUM, align 4
  %26 = load i32, i32* @E1000_TXD_POPTS_TXSM, align 4
  %27 = shl i32 %26, 8
  %28 = call i32 @IGB_SET_FLAG(i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IGB_TX_FLAGS_IPV4, align 4
  %33 = load i32, i32* @E1000_TXD_POPTS_IXSM, align 4
  %34 = shl i32 %33, 8
  %35 = call i32 @IGB_SET_FLAG(i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  ret i32 %39
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IGB_SET_FLAG(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
