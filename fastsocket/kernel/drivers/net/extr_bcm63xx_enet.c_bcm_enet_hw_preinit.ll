; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_hw_preinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_hw_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i64 }

@ENET_CTL_SRESET_MASK = common dso_local global i32 0, align 4
@ENET_CTL_REG = common dso_local global i32 0, align 4
@ENET_CTL_EPHYSEL_MASK = common dso_local global i32 0, align 4
@ENET_MIISC_MDCFREQDIV_SHIFT = common dso_local global i32 0, align 4
@ENET_MIISC_PREAMBLEEN_MASK = common dso_local global i32 0, align 4
@ENET_MIISC_REG = common dso_local global i32 0, align 4
@ENET_MIBCTL_REG = common dso_local global i32 0, align 4
@ENET_MIBCTL_RDCLEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_enet_priv*)* @bcm_enet_hw_preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_hw_preinit(%struct.bcm_enet_priv* %0) #0 {
  %2 = alloca %struct.bcm_enet_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bcm_enet_priv* %0, %struct.bcm_enet_priv** %2, align 8
  %5 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %6 = call i32 @bcm_enet_disable_mac(%struct.bcm_enet_priv* %5)
  %7 = load i32, i32* @ENET_CTL_SRESET_MASK, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ENET_CTL_REG, align 4
  %11 = call i32 @enet_writel(%struct.bcm_enet_priv* %8, i32 %9, i32 %10)
  %12 = call i32 (...) @wmb()
  store i32 1000, i32* %4, align 4
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %15 = load i32, i32* @ENET_CTL_REG, align 4
  %16 = call i32 @enet_readl(%struct.bcm_enet_priv* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ENET_CTL_SRESET_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %28

22:                                               ; preds = %13
  %23 = call i32 @udelay(i32 1)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %13, label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %30 = load i32, i32* @ENET_CTL_REG, align 4
  %31 = call i32 @enet_readl(%struct.bcm_enet_priv* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %33 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @ENET_CTL_EPHYSEL_MASK, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %28
  %41 = load i32, i32* @ENET_CTL_EPHYSEL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ENET_CTL_REG, align 4
  %49 = call i32 @enet_writel(%struct.bcm_enet_priv* %46, i32 %47, i32 %48)
  %50 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %51 = load i32, i32* @ENET_MIISC_MDCFREQDIV_SHIFT, align 4
  %52 = shl i32 31, %51
  %53 = load i32, i32* @ENET_MIISC_PREAMBLEEN_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ENET_MIISC_REG, align 4
  %56 = call i32 @enet_writel(%struct.bcm_enet_priv* %50, i32 %54, i32 %55)
  %57 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %58 = load i32, i32* @ENET_MIBCTL_REG, align 4
  %59 = call i32 @enet_readl(%struct.bcm_enet_priv* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @ENET_MIBCTL_RDCLEAR_MASK, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @ENET_MIBCTL_REG, align 4
  %66 = call i32 @enet_writel(%struct.bcm_enet_priv* %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @bcm_enet_disable_mac(%struct.bcm_enet_priv*) #1

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @enet_readl(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
