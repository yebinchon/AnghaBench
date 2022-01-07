; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_poll_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_poll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info, %struct.bnx2_tx_ring_info }
%struct.bnx2_rx_ring_info = type { i64 }
%struct.bnx2_tx_ring_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_napi*, i32, i32)* @bnx2_poll_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_poll_work(%struct.bnx2* %0, %struct.bnx2_napi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca %struct.bnx2_napi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2_tx_ring_info*, align 8
  %10 = alloca %struct.bnx2_rx_ring_info*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %5, align 8
  store %struct.bnx2_napi* %1, %struct.bnx2_napi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %12 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %11, i32 0, i32 1
  store %struct.bnx2_tx_ring_info* %12, %struct.bnx2_tx_ring_info** %9, align 8
  %13 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %13, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %14, %struct.bnx2_rx_ring_info** %10, align 8
  %15 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %16 = call i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi* %15)
  %17 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %9, align 8
  %18 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %23 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %24 = call i32 @bnx2_tx_int(%struct.bnx2* %22, %struct.bnx2_napi* %23, i32 0)
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %27 = call i64 @bnx2_get_hw_rx_cons(%struct.bnx2_napi* %26)
  %28 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %29 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %34 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i64 @bnx2_rx_int(%struct.bnx2* %33, %struct.bnx2_napi* %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %32, %25
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi*) #1

declare dso_local i32 @bnx2_tx_int(%struct.bnx2*, %struct.bnx2_napi*, i32) #1

declare dso_local i64 @bnx2_get_hw_rx_cons(%struct.bnx2_napi*) #1

declare dso_local i64 @bnx2_rx_int(%struct.bnx2*, %struct.bnx2_napi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
