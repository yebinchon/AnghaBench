; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sc92031.c_sc92031_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sc92031.c_sc92031_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sc92031_priv = type { i32, i8*, i32, i8*, i32, i64, i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@RX_BUF_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_BUF_TOT_LEN = common dso_local global i32 0, align 4
@sc92031_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sc92031_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc92031_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc92031_priv*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sc92031_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.sc92031_priv* %8, %struct.sc92031_priv** %5, align 8
  %9 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %10 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %9, i32 0, i32 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = load i32, i32* @RX_BUF_LEN, align 4
  %14 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %15 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %14, i32 0, i32 0
  %16 = call i8* @pci_alloc_consistent(%struct.pci_dev* %12, i32 %13, i32* %15)
  %17 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %18 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %20 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %114

30:                                               ; preds = %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = load i32, i32* @TX_BUF_TOT_LEN, align 4
  %33 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %34 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %33, i32 0, i32 2
  %35 = call i8* @pci_alloc_consistent(%struct.pci_dev* %31, i32 %32, i32* %34)
  %36 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %37 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %39 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %104

49:                                               ; preds = %30
  %50 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %51 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %53 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @sc92031_interrupt, align 4
  %58 = load i32, i32* @IRQF_SHARED, align 4
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @request_irq(i32 %56, i32 %57, i32 %58, i32 %61, %struct.net_device* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %94

70:                                               ; preds = %49
  %71 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %72 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %74 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %73, i32 0, i32 4
  %75 = call i32 @spin_lock_bh(i32* %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @_sc92031_reset(%struct.net_device* %76)
  %78 = call i32 (...) @mmiowb()
  %79 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %80 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %79, i32 0, i32 4
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @sc92031_enable_interrupts(%struct.net_device* %82)
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = call i64 @netif_carrier_ok(%struct.net_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %70
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @netif_start_queue(%struct.net_device* %88)
  br label %93

90:                                               ; preds = %70
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = call i32 @netif_tx_disable(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %90, %87
  store i32 0, i32* %2, align 4
  br label %116

94:                                               ; preds = %69
  %95 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %96 = load i32, i32* @TX_BUF_TOT_LEN, align 4
  %97 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %98 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %101 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pci_free_consistent(%struct.pci_dev* %95, i32 %96, i8* %99, i32 %102)
  br label %104

104:                                              ; preds = %94, %46
  %105 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %106 = load i32, i32* @RX_BUF_LEN, align 4
  %107 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %108 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.sc92031_priv*, %struct.sc92031_priv** %5, align 8
  %111 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pci_free_consistent(%struct.pci_dev* %105, i32 %106, i8* %109, i32 %112)
  br label %114

114:                                              ; preds = %104, %27
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %93
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.sc92031_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @_sc92031_reset(%struct.net_device*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sc92031_enable_interrupts(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
