; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tx_ctxtdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tx_ctxtdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i64, i64 }
%struct.ixgbe_adv_tx_context_desc = type { i8*, i8*, i64, i8* }

@IXGBE_TXD_CMD_DEXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, i32, i32, i32)* @ixgbevf_tx_ctxtdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_tx_ctxtdesc(%struct.ixgbevf_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_adv_tx_context_desc*, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call %struct.ixgbe_adv_tx_context_desc* @IXGBEVF_TX_CTXTDESC(%struct.ixgbevf_ring* %14, i64 %15)
  store %struct.ixgbe_adv_tx_context_desc* %16, %struct.ixgbe_adv_tx_context_desc** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %20, i32 0, i32 1
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
  %29 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @IXGBE_TXD_CMD_DEXT, align 4
  %32 = load i32, i32* @IXGBE_ADVTXD_DTYP_CTXT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %9, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %9, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %9, align 8
  %45 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %9, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  ret void
}

declare dso_local %struct.ixgbe_adv_tx_context_desc* @IXGBEVF_TX_CTXTDESC(%struct.ixgbevf_ring*, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
