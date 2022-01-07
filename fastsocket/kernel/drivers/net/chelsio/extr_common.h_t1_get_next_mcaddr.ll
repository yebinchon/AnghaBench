; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_common.h_t1_get_next_mcaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_common.h_t1_get_next_mcaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t1_rx_mode = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.t1_rx_mode*)* @t1_get_next_mcaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @t1_get_next_mcaddr(%struct.t1_rx_mode* %0) #0 {
  %2 = alloca %struct.t1_rx_mode*, align 8
  %3 = alloca i32*, align 8
  store %struct.t1_rx_mode* %0, %struct.t1_rx_mode** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %2, align 8
  %5 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = sext i32 %6 to i64
  %9 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %2, align 8
  %10 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %8, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %2, align 8
  %17 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %3, align 8
  %21 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %2, align 8
  %22 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %2, align 8
  %27 = getelementptr inbounds %struct.t1_rx_mode, %struct.t1_rx_mode* %26, i32 0, i32 0
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %27, align 8
  br label %28

28:                                               ; preds = %15, %1
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
