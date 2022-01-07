; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_do_mdio_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_do_mdio_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i32 }

@ENET_IR_MII = common dso_local global i32 0, align 4
@ENET_IR_REG = common dso_local global i32 0, align 4
@ENET_MIIDATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_enet_priv*, i32)* @do_mdio_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mdio_op(%struct.bcm_enet_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_enet_priv* %0, %struct.bcm_enet_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %7 = load i32, i32* @ENET_IR_MII, align 4
  %8 = load i32, i32* @ENET_IR_REG, align 4
  %9 = call i32 @enet_writel(%struct.bcm_enet_priv* %6, i32 %7, i32 %8)
  %10 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ENET_MIIDATA_REG, align 4
  %13 = call i32 @enet_writel(%struct.bcm_enet_priv* %10, i32 %11, i32 %12)
  %14 = call i32 (...) @wmb()
  store i32 1000, i32* %5, align 4
  br label %15

15:                                               ; preds = %25, %2
  %16 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %17 = load i32, i32* @ENET_IR_REG, align 4
  %18 = call i32 @enet_readl(%struct.bcm_enet_priv* %16, i32 %17)
  %19 = load i32, i32* @ENET_IR_MII, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %29

23:                                               ; preds = %15
  %24 = call i32 @udelay(i32 1)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %15, label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  ret i32 %33
}

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
