; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.korina_private = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_STAT_FINI = common dso_local global i32 0, align 4
@DMA_STAT_ERR = common dso_local global i32 0, align 4
@DMA_STAT_DONE = common dso_local global i32 0, align 4
@DMA_STAT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @korina_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @korina_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.korina_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.korina_private* @netdev_priv(%struct.net_device* %5)
  store %struct.korina_private* %6, %struct.korina_private** %3, align 8
  %7 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %8 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %7, i32 0, i32 7
  %9 = call i32 @del_timer(i32* %8)
  %10 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %11 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @disable_irq(i32 %12)
  %14 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %15 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @disable_irq(i32 %16)
  %18 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %19 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @disable_irq(i32 %20)
  %22 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %23 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @disable_irq(i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @korina_abort_tx(%struct.net_device* %26)
  %28 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %29 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %28, i32 0, i32 6
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @readl(i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DMA_STAT_FINI, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DMA_STAT_ERR, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %40 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %39, i32 0, i32 6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @writel(i32 %38, i32* %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @korina_abort_rx(%struct.net_device* %44)
  %46 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %47 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %46, i32 0, i32 5
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @readl(i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @DMA_STAT_DONE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @DMA_STAT_HALT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @DMA_STAT_ERR, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %60 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %59, i32 0, i32 5
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @writel(i32 %58, i32* %62)
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @korina_free_ring(%struct.net_device* %64)
  %66 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %67 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %66, i32 0, i32 4
  %68 = call i32 @napi_disable(i32* %67)
  %69 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %70 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = call i32 @free_irq(i32 %71, %struct.net_device* %72)
  %74 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %75 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = call i32 @free_irq(i32 %76, %struct.net_device* %77)
  %79 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %80 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 @free_irq(i32 %81, %struct.net_device* %82)
  %84 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %85 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @free_irq(i32 %86, %struct.net_device* %87)
  ret i32 0
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @korina_abort_tx(%struct.net_device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @korina_abort_rx(%struct.net_device*) #1

declare dso_local i32 @korina_free_ring(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
