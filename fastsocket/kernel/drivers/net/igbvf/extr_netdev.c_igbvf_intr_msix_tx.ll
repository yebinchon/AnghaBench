; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_intr_msix_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_intr_msix_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igbvf_adapter = type { i64, i64, %struct.igbvf_ring*, %struct.e1000_hw }
%struct.igbvf_ring = type { i32, i64, i64, i32 }
%struct.e1000_hw = type { i64 }

@EICS = common dso_local global i32 0, align 4
@EIMS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igbvf_intr_msix_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_intr_msix_tx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.igbvf_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.igbvf_ring*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.igbvf_adapter* %12, %struct.igbvf_adapter** %6, align 8
  %13 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %13, i32 0, i32 3
  store %struct.e1000_hw* %14, %struct.e1000_hw** %7, align 8
  %15 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %15, i32 0, i32 2
  %17 = load %struct.igbvf_ring*, %struct.igbvf_ring** %16, align 8
  store %struct.igbvf_ring* %17, %struct.igbvf_ring** %8, align 8
  %18 = load %struct.igbvf_ring*, %struct.igbvf_ring** %8, align 8
  %19 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.igbvf_ring*, %struct.igbvf_ring** %8, align 8
  %24 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.igbvf_ring*, %struct.igbvf_ring** %8, align 8
  %31 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @writel(i32 %25, i64 %33)
  %35 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %35, i32 0, i32 2
  %37 = load %struct.igbvf_ring*, %struct.igbvf_ring** %36, align 8
  %38 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %22, %2
  %40 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.igbvf_ring*, %struct.igbvf_ring** %8, align 8
  %45 = call i32 @igbvf_clean_tx_irq(%struct.igbvf_ring* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EICS, align 4
  %49 = load %struct.igbvf_ring*, %struct.igbvf_ring** %8, align 8
  %50 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ew32(i32 %48, i32 %51)
  br label %59

53:                                               ; preds = %39
  %54 = load i32, i32* @EIMS, align 4
  %55 = load %struct.igbvf_ring*, %struct.igbvf_ring** %8, align 8
  %56 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ew32(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %60
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @igbvf_clean_tx_irq(%struct.igbvf_ring*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
