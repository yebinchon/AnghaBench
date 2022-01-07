; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_init_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i32 }
%struct.net_device = type { i32 }

@CCR0 = common dso_local global i32 0, align 4
@LengthCheck = common dso_local global i32 0, align 4
@HDLC_MAX_MRU = common dso_local global i32 0, align 4
@RLCR = common dso_local global i32 0, align 4
@CCR1 = common dso_local global i32 0, align 4
@RxActivate = common dso_local global i32 0, align 4
@CCR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dscc4_dev_priv*, %struct.net_device*)* @dscc4_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dscc4_init_registers(%struct.dscc4_dev_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = load i32, i32* @CCR0, align 4
  %8 = call i32 @scc_writel(i32 0, %struct.dscc4_dev_priv* %5, %struct.net_device* %6, i32 %7)
  %9 = load i32, i32* @LengthCheck, align 4
  %10 = load i32, i32* @HDLC_MAX_MRU, align 4
  %11 = ashr i32 %10, 5
  %12 = or i32 %9, %11
  %13 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load i32, i32* @RLCR, align 4
  %16 = call i32 @scc_writel(i32 %12, %struct.dscc4_dev_priv* %13, %struct.net_device* %14, i32 %15)
  %17 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32, i32* @CCR1, align 4
  %20 = call i32 @scc_writel(i32 37781504, %struct.dscc4_dev_priv* %17, %struct.net_device* %18, i32 %19)
  %21 = load i32, i32* @RxActivate, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 327688, %22
  %24 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i32, i32* @CCR2, align 4
  %27 = call i32 @scc_writel(i32 %23, %struct.dscc4_dev_priv* %24, %struct.net_device* %25, i32 %26)
  ret void
}

declare dso_local i32 @scc_writel(i32, %struct.dscc4_dev_priv*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
