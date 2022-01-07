; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_storm_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_storm_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BNX2X_RX_MODE_FCOE_ETH = common dso_local global i32 0, align 4
@RAMROD_RX = common dso_local global i32 0, align 4
@RAMROD_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_storm_rx_mode(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = call i32 @NO_FCOE(%struct.bnx2x* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @BNX2X_RX_MODE_FCOE_ETH, align 4
  %14 = call i32 @__set_bit(i32 %13, i64* %4)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bnx2x_fill_accept_flags(%struct.bnx2x* %16, i32 %19, i64* %6, i64* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load i32, i32* @RAMROD_RX, align 4
  %27 = call i32 @__set_bit(i32 %26, i64* %5)
  %28 = load i32, i32* @RAMROD_TX, align 4
  %29 = call i32 @__set_bit(i32 %28, i64* %5)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @bnx2x_set_q_rx_mode(%struct.bnx2x* %30, i32 %35, i64 %36, i64 %37, i64 %38, i64 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %25, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_fill_accept_flags(%struct.bnx2x*, i32, i64*, i64*) #1

declare dso_local i32 @bnx2x_set_q_rx_mode(%struct.bnx2x*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
