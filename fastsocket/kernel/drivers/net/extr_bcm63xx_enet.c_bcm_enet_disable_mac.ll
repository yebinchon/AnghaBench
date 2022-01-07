; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_disable_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_disable_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i32 }

@ENET_CTL_REG = common dso_local global i32 0, align 4
@ENET_CTL_DISABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_enet_priv*)* @bcm_enet_disable_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_disable_mac(%struct.bcm_enet_priv* %0) #0 {
  %2 = alloca %struct.bcm_enet_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_enet_priv* %0, %struct.bcm_enet_priv** %2, align 8
  %6 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %7 = load i32, i32* @ENET_CTL_REG, align 4
  %8 = call i32 @enet_readl(%struct.bcm_enet_priv* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @ENET_CTL_DISABLE_MASK, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ENET_CTL_REG, align 4
  %15 = call i32 @enet_writel(%struct.bcm_enet_priv* %12, i32 %13, i32 %14)
  store i32 1000, i32* %3, align 4
  br label %16

16:                                               ; preds = %27, %1
  %17 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %18 = load i32, i32* @ENET_CTL_REG, align 4
  %19 = call i32 @enet_readl(%struct.bcm_enet_priv* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ENET_CTL_DISABLE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %31

25:                                               ; preds = %16
  %26 = call i32 @udelay(i32 1)
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %16, label %31

31:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @enet_readl(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
