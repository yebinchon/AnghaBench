; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_set_flow_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_set_flow_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32 }

@B44_FLAG_TX_PAUSE = common dso_local global i32 0, align 4
@B44_FLAG_RX_PAUSE = common dso_local global i32 0, align 4
@B44_RXCONFIG = common dso_local global i32 0, align 4
@RXCONFIG_FLOW = common dso_local global i32 0, align 4
@B44_MAC_FLOW = common dso_local global i32 0, align 4
@MAC_FLOW_PAUSE_ENAB = common dso_local global i32 0, align 4
@MAC_FLOW_RX_HI_WATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*, i32)* @__b44_set_flow_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__b44_set_flow_ctrl(%struct.b44* %0, i32 %1) #0 {
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @B44_FLAG_TX_PAUSE, align 4
  %7 = load i32, i32* @B44_FLAG_RX_PAUSE, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.b44*, %struct.b44** %3, align 8
  %11 = getelementptr inbounds %struct.b44, %struct.b44* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.b44*, %struct.b44** %3, align 8
  %16 = getelementptr inbounds %struct.b44, %struct.b44* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.b44*, %struct.b44** %3, align 8
  %20 = load i32, i32* @B44_RXCONFIG, align 4
  %21 = call i32 @br32(%struct.b44* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @B44_FLAG_RX_PAUSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @RXCONFIG_FLOW, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @RXCONFIG_FLOW, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.b44*, %struct.b44** %3, align 8
  %37 = load i32, i32* @B44_RXCONFIG, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @bw32(%struct.b44* %36, i32 %37, i32 %38)
  %40 = load %struct.b44*, %struct.b44** %3, align 8
  %41 = load i32, i32* @B44_MAC_FLOW, align 4
  %42 = call i32 @br32(%struct.b44* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @B44_FLAG_TX_PAUSE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load i32, i32* @MAC_FLOW_PAUSE_ENAB, align 4
  %49 = load i32, i32* @MAC_FLOW_RX_HI_WATER, align 4
  %50 = and i32 192, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %35
  %55 = load i32, i32* @MAC_FLOW_PAUSE_ENAB, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.b44*, %struct.b44** %3, align 8
  %61 = load i32, i32* @B44_MAC_FLOW, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @bw32(%struct.b44* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
