; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.at91_private = type { i32, i32, i32* }

@AT91_EMAC_ISR = common dso_local global i32 0, align 4
@AT91_EMAC_RCOM = common dso_local global i64 0, align 8
@AT91_EMAC_TCOM = common dso_local global i64 0, align 8
@AT91_EMAC_TUND = common dso_local global i64 0, align 8
@AT91_EMAC_RTRY = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@AT91_EMAC_RBNA = common dso_local global i64 0, align 8
@AT91_EMAC_CTL = common dso_local global i32 0, align 4
@AT91_EMAC_RE = common dso_local global i64 0, align 8
@AT91_EMAC_ROVR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s: ROVR error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91ether_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91ether_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.at91_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.at91_private* @netdev_priv(%struct.net_device* %11)
  store %struct.at91_private* %12, %struct.at91_private** %6, align 8
  %13 = load i32, i32* @AT91_EMAC_ISR, align 4
  %14 = call i64 @at91_emac_read(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @AT91_EMAC_RCOM, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @at91ether_rx(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @AT91_EMAC_TCOM, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @AT91_EMAC_TUND, align 8
  %30 = load i64, i64* @AT91_EMAC_RTRY, align 8
  %31 = or i64 %29, %30
  %32 = and i64 %28, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %42 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %47 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dev_kfree_skb_irq(i32* %48)
  %50 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %51 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %53 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %56 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(i32* null, i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %45, %40
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @netif_wake_queue(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %22
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @AT91_EMAC_RBNA, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32, i32* @AT91_EMAC_CTL, align 4
  %70 = call i64 @at91_emac_read(i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* @AT91_EMAC_CTL, align 4
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @AT91_EMAC_RE, align 8
  %74 = xor i64 %73, -1
  %75 = and i64 %72, %74
  %76 = call i32 @at91_emac_write(i32 %71, i64 %75)
  %77 = load i32, i32* @AT91_EMAC_CTL, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @AT91_EMAC_RE, align 8
  %80 = or i64 %78, %79
  %81 = call i32 @at91_emac_write(i32 %77, i64 %80)
  br label %82

82:                                               ; preds = %68, %63
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @AT91_EMAC_ROVR, align 8
  %85 = and i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %93
}

declare dso_local %struct.at91_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @at91_emac_read(i32) #1

declare dso_local i32 @at91ether_rx(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @at91_emac_write(i32, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
