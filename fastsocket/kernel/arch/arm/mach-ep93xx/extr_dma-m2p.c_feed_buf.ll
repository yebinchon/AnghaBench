; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_feed_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_feed_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m2p_channel = type { i32, i64 }
%struct.ep93xx_dma_buffer = type { i32, i32 }

@M2P_MAXCNT0 = common dso_local global i64 0, align 8
@M2P_BASE0 = common dso_local global i64 0, align 8
@M2P_MAXCNT1 = common dso_local global i64 0, align 8
@M2P_BASE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m2p_channel*, %struct.ep93xx_dma_buffer*)* @feed_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feed_buf(%struct.m2p_channel* %0, %struct.ep93xx_dma_buffer* %1) #0 {
  %3 = alloca %struct.m2p_channel*, align 8
  %4 = alloca %struct.ep93xx_dma_buffer*, align 8
  store %struct.m2p_channel* %0, %struct.m2p_channel** %3, align 8
  store %struct.ep93xx_dma_buffer* %1, %struct.ep93xx_dma_buffer** %4, align 8
  %5 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %6 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ep93xx_dma_buffer, %struct.ep93xx_dma_buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %14 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @M2P_MAXCNT0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.ep93xx_dma_buffer, %struct.ep93xx_dma_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %23 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @M2P_BASE0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.ep93xx_dma_buffer, %struct.ep93xx_dma_buffer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %33 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @M2P_MAXCNT1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.ep93xx_dma_buffer, %struct.ep93xx_dma_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %42 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @M2P_BASE1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %28, %9
  %48 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %49 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = xor i32 %50, 1
  store i32 %51, i32* %49, align 8
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
