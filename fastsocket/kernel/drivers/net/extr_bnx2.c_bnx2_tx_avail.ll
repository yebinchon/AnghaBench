; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_tx_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_tx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_tx_ring_info = type { i32, i32 }

@BNX2_TX_DESC_CNT = common dso_local global i32 0, align 4
@BNX2_MAX_TX_DESC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_tx_ring_info*)* @bnx2_tx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_tx_avail(%struct.bnx2* %0, %struct.bnx2_tx_ring_info* %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca %struct.bnx2_tx_ring_info*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store %struct.bnx2_tx_ring_info* %1, %struct.bnx2_tx_ring_info** %4, align 8
  %6 = call i32 (...) @barrier()
  %7 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BNX2_TX_DESC_CNT, align 4
  %16 = icmp sge i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 65535
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BNX2_TX_DESC_CNT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @BNX2_MAX_TX_DESC_CNT, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %20
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  ret i32 %34
}

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
