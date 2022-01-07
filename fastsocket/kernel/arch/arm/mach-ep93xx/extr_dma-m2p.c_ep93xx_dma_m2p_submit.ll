; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_m2p_client = type { i32, i32 (i32, %struct.ep93xx_dma_buffer*)*, %struct.m2p_channel* }
%struct.m2p_channel = type { i32, i32, %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer*, i64 }
%struct.ep93xx_dma_buffer = type { i32 }

@M2P_CONTROL = common dso_local global i64 0, align 8
@M2P_CONTROL_STALL_IRQ_EN = common dso_local global i32 0, align 4
@M2P_CONTROL_NFB_IRQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep93xx_dma_m2p_submit(%struct.ep93xx_dma_m2p_client* %0, %struct.ep93xx_dma_buffer* %1) #0 {
  %3 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %4 = alloca %struct.ep93xx_dma_buffer*, align 8
  %5 = alloca %struct.m2p_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ep93xx_dma_m2p_client* %0, %struct.ep93xx_dma_m2p_client** %3, align 8
  store %struct.ep93xx_dma_buffer* %1, %struct.ep93xx_dma_buffer** %4, align 8
  %8 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %9 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %8, i32 0, i32 2
  %10 = load %struct.m2p_channel*, %struct.m2p_channel** %9, align 8
  store %struct.m2p_channel* %10, %struct.m2p_channel** %5, align 8
  %11 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %12 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %16 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @M2P_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %22 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %21, i32 0, i32 3
  %23 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %22, align 8
  %24 = icmp eq %struct.ep93xx_dma_buffer* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %27 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %28 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %27, i32 0, i32 3
  store %struct.ep93xx_dma_buffer* %26, %struct.ep93xx_dma_buffer** %28, align 8
  %29 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %30 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %31 = call i32 @feed_buf(%struct.m2p_channel* %29, %struct.ep93xx_dma_buffer* %30)
  %32 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %33 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %32, i32 0, i32 1
  %34 = load i32 (i32, %struct.ep93xx_dma_buffer*)*, i32 (i32, %struct.ep93xx_dma_buffer*)** %33, align 8
  %35 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %36 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %39 = call i32 %34(i32 %37, %struct.ep93xx_dma_buffer* %38)
  %40 = load i32, i32* @M2P_CONTROL_STALL_IRQ_EN, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @m2p_set_control(%struct.m2p_channel* %43, i32 %44)
  br label %71

46:                                               ; preds = %2
  %47 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %48 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %47, i32 0, i32 2
  %49 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %48, align 8
  %50 = icmp eq %struct.ep93xx_dma_buffer* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %53 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %54 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %53, i32 0, i32 2
  store %struct.ep93xx_dma_buffer* %52, %struct.ep93xx_dma_buffer** %54, align 8
  %55 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %56 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %57 = call i32 @feed_buf(%struct.m2p_channel* %55, %struct.ep93xx_dma_buffer* %56)
  %58 = load i32, i32* @M2P_CONTROL_NFB_IRQ_EN, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @m2p_set_control(%struct.m2p_channel* %61, i32 %62)
  br label %70

64:                                               ; preds = %46
  %65 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.ep93xx_dma_buffer, %struct.ep93xx_dma_buffer* %65, i32 0, i32 0
  %67 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %68 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %67, i32 0, i32 1
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %64, %51
  br label %71

71:                                               ; preds = %70, %25
  %72 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %73 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %72, i32 0, i32 0
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @feed_buf(%struct.m2p_channel*, %struct.ep93xx_dma_buffer*) #1

declare dso_local i32 @m2p_set_control(%struct.m2p_channel*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
