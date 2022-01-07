; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_start_xmit_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_start_xmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.temac_local = type { i64, %struct.cdmac_bd* }
%struct.cdmac_bd = type { i32, i64, i64, i32 }
%struct.sk_buff = type { i32 }

@STS_CTRL_APP0_CMPLT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @temac_start_xmit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @temac_start_xmit_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca %struct.cdmac_bd*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.temac_local* @netdev_priv(%struct.net_device* %6)
  store %struct.temac_local* %7, %struct.temac_local** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %9 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %8, i32 0, i32 1
  %10 = load %struct.cdmac_bd*, %struct.cdmac_bd** %9, align 8
  %11 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %12 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %10, i64 %13
  store %struct.cdmac_bd* %14, %struct.cdmac_bd** %4, align 8
  %15 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %16 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %76, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @STS_CTRL_APP0_CMPLT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %18
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %29 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %32 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  %35 = call i32 @dma_unmap_single(i32 %27, i32 %30, i64 %33, i32 %34)
  %36 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %37 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %42 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.sk_buff*
  %45 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %40, %23
  %47 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %48 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %55 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %56
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %65 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %69 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TX_BD_NUM, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %46
  %74 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %75 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %46
  %77 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %78 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %77, i32 0, i32 1
  %79 = load %struct.cdmac_bd*, %struct.cdmac_bd** %78, align 8
  %80 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %81 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %79, i64 %82
  store %struct.cdmac_bd* %83, %struct.cdmac_bd** %4, align 8
  %84 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %85 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %5, align 4
  br label %18

87:                                               ; preds = %18
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = call i32 @netif_wake_queue(%struct.net_device* %88)
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
