; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_reset_one_rx_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_reset_one_rx_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }
%struct.rx_ring_info = type { i32 }

@RX_DMA_ENT_MSK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, %struct.rx_ring_info*)* @niu_reset_one_rx_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_reset_one_rx_channel(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %4, align 8
  %6 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %7 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @niu_rx_channel_reset(%struct.niu* %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @RX_DMA_ENT_MSK(i32 %12)
  %14 = load i32, i32* @RX_DMA_ENT_MSK_ALL, align 4
  %15 = call i32 @nw64(i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @RX_DMA_CTL_STAT(i32 %16)
  %18 = call i32 @nw64(i32 %17, i32 0)
  %19 = load %struct.niu*, %struct.niu** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @niu_enable_rx_channel(%struct.niu* %19, i32 %20, i32 0)
  ret void
}

declare dso_local i32 @niu_rx_channel_reset(%struct.niu*, i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @RX_DMA_ENT_MSK(i32) #1

declare dso_local i32 @RX_DMA_CTL_STAT(i32) #1

declare dso_local i32 @niu_enable_rx_channel(%struct.niu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
