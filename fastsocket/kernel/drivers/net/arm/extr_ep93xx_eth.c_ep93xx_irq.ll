; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ep93xx_priv = type { i32, i32 }

@REG_INTSTSC = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@REG_INTSTS_RX = common dso_local global i32 0, align 4
@REG_INTEN = common dso_local global i32 0, align 4
@REG_INTEN_TX = common dso_local global i32 0, align 4
@REG_INTSTS_TX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ep93xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ep93xx_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ep93xx_priv* %12, %struct.ep93xx_priv** %7, align 8
  %13 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %14 = load i32, i32* @REG_INTSTSC, align 4
  %15 = call i32 @rdl(%struct.ep93xx_priv* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @REG_INTSTS_RX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %27 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %30 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %29, i32 0, i32 1
  %31 = call i32 @napi_schedule_prep(i32* %30)
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %36 = load i32, i32* @REG_INTEN, align 4
  %37 = load i32, i32* @REG_INTEN_TX, align 4
  %38 = call i32 @wrl(%struct.ep93xx_priv* %35, i32 %36, i32 %37)
  %39 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %40 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %39, i32 0, i32 1
  %41 = call i32 @__napi_schedule(i32* %40)
  br label %42

42:                                               ; preds = %34, %25
  %43 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %44 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %20
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @REG_INTSTS_TX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = call i32 @ep93xx_tx_complete(%struct.net_device* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rdl(%struct.ep93xx_priv*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @wrl(%struct.ep93xx_priv*, i32, i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ep93xx_tx_complete(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
