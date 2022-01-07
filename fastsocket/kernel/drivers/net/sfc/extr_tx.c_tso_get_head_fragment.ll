; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_tso_get_head_fragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_tso_get_head_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tso_state = type { i32, i32, i32, i32, i32, i32 }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFX_TX_BUF_MAP_SINGLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tso_state*, %struct.efx_nic*, %struct.sk_buff*)* @tso_get_head_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tso_get_head_fragment(%struct.tso_state* %0, %struct.efx_nic* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tso_state*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tso_state* %0, %struct.tso_state** %5, align 8
  store %struct.efx_nic* %1, %struct.efx_nic** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %11 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i32 @skb_headlen(%struct.sk_buff* %13)
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_map_single(i32* %20, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %31 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %37 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_mapping_error(i32* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %3
  %46 = load i32, i32* @EFX_TX_BUF_MAP_SINGLE, align 4
  %47 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %48 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %51 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %54 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %56 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tso_state*, %struct.tso_state** %5, align 8
  %59 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %45
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
