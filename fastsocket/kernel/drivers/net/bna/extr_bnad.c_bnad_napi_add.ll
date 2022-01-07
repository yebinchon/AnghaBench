; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_napi_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bnad_rx_ctrl* }
%struct.bnad_rx_ctrl = type { i32 }

@bnad_napi_poll_rx = common dso_local global i32 0, align 4
@BNAD_NAPI_POLL_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, i64)* @bnad_napi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_napi_add(%struct.bnad* %0, i64 %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnad_rx_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.bnad*, %struct.bnad** %3, align 8
  %10 = getelementptr inbounds %struct.bnad, %struct.bnad* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.bnad*, %struct.bnad** %3, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %20, i64 %22
  store %struct.bnad_rx_ctrl* %23, %struct.bnad_rx_ctrl** %5, align 8
  %24 = load %struct.bnad*, %struct.bnad** %3, align 8
  %25 = getelementptr inbounds %struct.bnad, %struct.bnad* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* @bnad_napi_poll_rx, align 4
  %30 = load i32, i32* @BNAD_NAPI_POLL_QUOTA, align 4
  %31 = call i32 @netif_napi_add(i32 %26, i32* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  ret void
}

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
