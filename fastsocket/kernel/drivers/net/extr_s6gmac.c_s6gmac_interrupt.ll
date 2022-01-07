; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s6gmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6gmac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.s6gmac*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %10)
  store %struct.s6gmac* %11, %struct.s6gmac** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %18 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %21 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %24 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @s6dmac_termcnt_irq(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call i32 @s6gmac_rx_interrupt(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %16
  %32 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %33 = call i32 @s6gmac_rx_fillfifo(%struct.s6gmac* %32)
  %34 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %35 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %38 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @s6dmac_termcnt_irq(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @s6gmac_tx_interrupt(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %47 = call i32 @s6gmac_stats_interrupt(%struct.s6gmac* %46, i32 0)
  %48 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %49 = call i32 @s6gmac_stats_interrupt(%struct.s6gmac* %48, i32 1)
  %50 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %51 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @s6dmac_termcnt_irq(i32, i32) #1

declare dso_local i32 @s6gmac_rx_interrupt(%struct.net_device*) #1

declare dso_local i32 @s6gmac_rx_fillfifo(%struct.s6gmac*) #1

declare dso_local i32 @s6gmac_tx_interrupt(%struct.net_device*) #1

declare dso_local i32 @s6gmac_stats_interrupt(%struct.s6gmac*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
