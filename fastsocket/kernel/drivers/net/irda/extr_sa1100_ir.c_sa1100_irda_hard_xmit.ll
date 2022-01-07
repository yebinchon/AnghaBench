; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_hard_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_hard_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sa1100_irda = type { i32, i32, i32, i32, i32, i32, %struct.sk_buff*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@UTCR3_TIE = common dso_local global i32 0, align 4
@UTCR3_TXE = common dso_local global i32 0, align 4
@Ser2UTCR3 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HSCR0_HSSP = common dso_local global i32 0, align 4
@HSCR0_TXE = common dso_local global i32 0, align 4
@Ser2HSCR0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sa1100_irda_hard_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_irda_hard_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sa1100_irda*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %9)
  store %struct.sa1100_irda* %10, %struct.sa1100_irda** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @irda_get_next_speed(%struct.sk_buff* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %15 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %24 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %18, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %32 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %37 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @sa1100_irda_set_speed(%struct.sa1100_irda* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %130

45:                                               ; preds = %25
  %46 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %47 = call i32 @IS_FIR(%struct.sa1100_irda* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %45
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 @netif_stop_queue(%struct.net_device* %50)
  %52 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %53 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %57 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %61 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %65 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @async_wrap_skb(%struct.sk_buff* %59, i32 %63, i32 %67)
  %69 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %70 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @UTCR3_TIE, align 4
  %73 = load i32, i32* @UTCR3_TXE, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* @Ser2UTCR3, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @dev_kfree_skb(%struct.sk_buff* %75)
  br label %125

77:                                               ; preds = %45
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @irda_get_mtt(%struct.sk_buff* %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %81 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %80, i32 0, i32 6
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  %83 = call i32 @BUG_ON(%struct.sk_buff* %82)
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = call i32 @netif_stop_queue(%struct.net_device* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %88 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %87, i32 0, i32 6
  store %struct.sk_buff* %86, %struct.sk_buff** %88, align 8
  %89 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %90 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DMA_TO_DEVICE, align 4
  %99 = call i32 @dma_map_single(i32 %91, i32 %94, i32 %97, i32 %98)
  %100 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %101 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %103 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %106 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @sa1100_start_dma(i32 %104, i32 %107, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %77
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @udelay(i32 %115)
  br label %117

117:                                              ; preds = %114, %77
  %118 = load %struct.sa1100_irda*, %struct.sa1100_irda** %6, align 8
  %119 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @HSCR0_HSSP, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @HSCR0_TXE, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* @Ser2HSCR0, align 4
  br label %125

125:                                              ; preds = %117, %49
  %126 = load i32, i32* @jiffies, align 4
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %41
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @irda_get_next_speed(%struct.sk_buff*) #1

declare dso_local i32 @sa1100_irda_set_speed(%struct.sa1100_irda*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IS_FIR(%struct.sa1100_irda*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @async_wrap_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @irda_get_mtt(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @sa1100_start_dma(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
