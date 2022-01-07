; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_free_skbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_free_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i64*, %struct.sk_buff**, i64, i32, i64*, %struct.sk_buff** }
%struct.sk_buff = type { i64 }

@NUM_TX_BUFFERS = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@NUM_RX_BUFFERS = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_free_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_free_skbs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.amd8111e_priv* %7, %struct.amd8111e_priv** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NUM_TX_BUFFERS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %67

12:                                               ; preds = %8
  %13 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %13, i32 0, i32 5
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %15, i64 %17
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %12
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %26 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %25, i32 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %33 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %32, i32 0, i32 5
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %42 = call i32 @pci_unmap_single(i32 %24, i64 %31, i64 %40, i32 %41)
  %43 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %44 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %43, i32 0, i32 5
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %45, i64 %47
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = call i32 @dev_kfree_skb(%struct.sk_buff* %49)
  %51 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %52 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %51, i32 0, i32 5
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %55
  store %struct.sk_buff* null, %struct.sk_buff** %56, align 8
  %57 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %58 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %57, i32 0, i32 4
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %21, %12
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %8

67:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %120, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @NUM_RX_BUFFERS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %123

72:                                               ; preds = %68
  %73 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %74 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %73, i32 0, i32 1
  %75 = load %struct.sk_buff**, %struct.sk_buff*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %75, i64 %77
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  store %struct.sk_buff* %79, %struct.sk_buff** %4, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  br i1 %81, label %82, label %119

82:                                               ; preds = %72
  %83 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %84 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %87 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %94 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 2
  %97 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %98 = call i32 @pci_unmap_single(i32 %85, i64 %92, i64 %96, i32 %97)
  %99 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %100 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %99, i32 0, i32 1
  %101 = load %struct.sk_buff**, %struct.sk_buff*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %101, i64 %103
  %105 = load %struct.sk_buff*, %struct.sk_buff** %104, align 8
  %106 = call i32 @dev_kfree_skb(%struct.sk_buff* %105)
  %107 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %108 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %107, i32 0, i32 1
  %109 = load %struct.sk_buff**, %struct.sk_buff*** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %109, i64 %111
  store %struct.sk_buff* null, %struct.sk_buff** %112, align 8
  %113 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %114 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %82, %72
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %68

123:                                              ; preds = %68
  ret i32 0
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
