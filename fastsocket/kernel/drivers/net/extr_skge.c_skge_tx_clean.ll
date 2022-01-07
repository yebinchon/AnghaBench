; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_tx_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.skge_element*, %struct.skge_element* }
%struct.skge_element = type { %struct.skge_tx_desc*, %struct.skge_element* }
%struct.skge_tx_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @skge_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_tx_clean(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.skge_element*, align 8
  %5 = alloca %struct.skge_tx_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.skge_port* @netdev_priv(%struct.net_device* %6)
  store %struct.skge_port* %7, %struct.skge_port** %3, align 8
  %8 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %9 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.skge_element*, %struct.skge_element** %10, align 8
  store %struct.skge_element* %11, %struct.skge_element** %4, align 8
  br label %12

12:                                               ; preds = %31, %1
  %13 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %14 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %15 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.skge_element*, %struct.skge_element** %16, align 8
  %18 = icmp ne %struct.skge_element* %13, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %21 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %20, i32 0, i32 0
  %22 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %21, align 8
  store %struct.skge_tx_desc* %22, %struct.skge_tx_desc** %5, align 8
  %23 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %24 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %25 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %5, align 8
  %26 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @skge_tx_free(%struct.skge_port* %23, %struct.skge_element* %24, i64 %27)
  %29 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %5, align 8
  %30 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %33 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %32, i32 0, i32 1
  %34 = load %struct.skge_element*, %struct.skge_element** %33, align 8
  store %struct.skge_element* %34, %struct.skge_element** %4, align 8
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %37 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %38 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.skge_element* %36, %struct.skge_element** %39, align 8
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_tx_free(%struct.skge_port*, %struct.skge_element*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
