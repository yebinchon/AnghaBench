; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_channel_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_channel_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m2p_channel = type { i32, i64 }

@M2P_CONTROL = common dso_local global i64 0, align 8
@M2P_CONTROL_STALL_IRQ_EN = common dso_local global i32 0, align 4
@M2P_CONTROL_NFB_IRQ_EN = common dso_local global i32 0, align 4
@STATE_ON = common dso_local global i64 0, align 8
@STATE_STALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m2p_channel*)* @channel_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_disable(%struct.m2p_channel* %0) #0 {
  %2 = alloca %struct.m2p_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.m2p_channel* %0, %struct.m2p_channel** %2, align 8
  %4 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %5 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @M2P_CONTROL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @M2P_CONTROL_STALL_IRQ_EN, align 4
  %11 = load i32, i32* @M2P_CONTROL_NFB_IRQ_EN, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @m2p_set_control(%struct.m2p_channel* %16, i32 %17)
  br label %19

19:                                               ; preds = %24, %1
  %20 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %21 = call i64 @m2p_channel_state(%struct.m2p_channel* %20)
  %22 = load i64, i64* @STATE_ON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (...) @cpu_relax()
  br label %19

26:                                               ; preds = %19
  %27 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %28 = call i32 @m2p_set_control(%struct.m2p_channel* %27, i32 0)
  br label %29

29:                                               ; preds = %34, %26
  %30 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %31 = call i64 @m2p_channel_state(%struct.m2p_channel* %30)
  %32 = load i64, i64* @STATE_STALL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @cpu_relax()
  br label %29

36:                                               ; preds = %29
  %37 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %38 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_disable(i32 %39)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @m2p_set_control(%struct.m2p_channel*, i32) #1

declare dso_local i64 @m2p_channel_state(%struct.m2p_channel*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
