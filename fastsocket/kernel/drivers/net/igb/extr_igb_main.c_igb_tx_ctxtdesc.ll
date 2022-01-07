; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_tx_ctxtdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_tx_ctxtdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i64, i64, i32, i32 }
%struct.e1000_adv_tx_context_desc = type { i8*, i8*, i64, i8* }

@E1000_TXD_CMD_DEXT = common dso_local global i32 0, align 4
@E1000_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4
@IGB_RING_FLAG_TX_CTX_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, i32, i32, i32)* @igb_tx_ctxtdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_tx_ctxtdesc(%struct.igb_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_adv_tx_context_desc*, align 8
  %10 = alloca i64, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %12 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call %struct.e1000_adv_tx_context_desc* @IGB_TX_CTXTDESC(%struct.igb_ring* %14, i64 %15)
  store %struct.e1000_adv_tx_context_desc* %16, %struct.e1000_adv_tx_context_desc** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %21 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %26 ]
  %29 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %30 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @E1000_TXD_CMD_DEXT, align 4
  %32 = load i32, i32* @E1000_ADVTXD_DTYP_CTXT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @IGB_RING_FLAG_TX_CTX_IDX, align 4
  %37 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %38 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %37, i32 0, i32 3
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %43 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %41, %27
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %52 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %54 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %58 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.e1000_adv_tx_context_desc*, %struct.e1000_adv_tx_context_desc** %9, align 8
  %62 = getelementptr inbounds %struct.e1000_adv_tx_context_desc, %struct.e1000_adv_tx_context_desc* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  ret void
}

declare dso_local %struct.e1000_adv_tx_context_desc* @IGB_TX_CTXTDESC(%struct.igb_ring*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
