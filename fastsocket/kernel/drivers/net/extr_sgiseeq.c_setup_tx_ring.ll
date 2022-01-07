; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_setup_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_setup_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sgiseeq_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.sgiseeq_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sgiseeq_tx_desc*, i32)* @setup_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tx_ring(%struct.net_device* %0, %struct.sgiseeq_tx_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sgiseeq_tx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sgiseeq_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sgiseeq_tx_desc* %1, %struct.sgiseeq_tx_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %9)
  store %struct.sgiseeq_private* %10, %struct.sgiseeq_private** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %16, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %7, align 8
  %18 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %18, i64 %20
  %22 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %21, i64 1
  %23 = call i8* @VIRT_TO_DMA(%struct.sgiseeq_private* %17, %struct.sgiseeq_tx_desc* %22)
  %24 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %24, i64 %26
  %28 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %23, i8** %29, align 8
  %30 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %30, i64 %32
  %34 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %37, i64 %39
  %41 = call i32 @dma_sync_desc_dev(%struct.net_device* %36, %struct.sgiseeq_tx_desc* %40)
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %7, align 8
  %46 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %5, align 8
  %47 = call i8* @VIRT_TO_DMA(%struct.sgiseeq_private* %45, %struct.sgiseeq_tx_desc* %46)
  %48 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %48, i64 %50
  %52 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %47, i8** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %55, i64 %57
  %59 = call i32 @dma_sync_desc_dev(%struct.net_device* %54, %struct.sgiseeq_tx_desc* %58)
  ret void
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @VIRT_TO_DMA(%struct.sgiseeq_private*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i32 @dma_sync_desc_dev(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
