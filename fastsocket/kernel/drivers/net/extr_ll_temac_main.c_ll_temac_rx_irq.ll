; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_ll_temac_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_ll_temac_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.temac_local = type { i32 }

@RX_IRQ_REG = common dso_local global i32 0, align 4
@IRQ_COAL = common dso_local global i32 0, align 4
@IRQ_DLY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ll_temac_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_temac_rx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.temac_local*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.temac_local* @netdev_priv(%struct.net_device* %10)
  store %struct.temac_local* %11, %struct.temac_local** %6, align 8
  %12 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %13 = load i32, i32* @RX_IRQ_REG, align 4
  %14 = call i32 @temac_dma_in32(%struct.temac_local* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %16 = load i32, i32* @RX_IRQ_REG, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @temac_dma_out32(%struct.temac_local* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IRQ_COAL, align 4
  %21 = load i32, i32* @IRQ_DLY, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %27 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ll_temac_recv(i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @temac_dma_in32(%struct.temac_local*, i32) #1

declare dso_local i32 @temac_dma_out32(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @ll_temac_recv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
