; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.ks8695_priv = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, %struct.sk_buff* }

@MAX_TX_DESC = common dso_local global i64 0, align 8
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s: Could not map DMA memory for transmission, trying later\0A\00", align 1
@TDES_IC = common dso_local global i32 0, align 4
@TDES_FS = common dso_local global i32 0, align 4
@TDES_LS = common dso_local global i32 0, align 4
@TDES_TBS = common dso_local global i32 0, align 4
@TDES_OWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@KS8695_DTSC = common dso_local global i32 0, align 4
@MAX_TX_DESC_MASK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ks8695_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ks8695_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ks8695_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ks8695_priv* %10, %struct.ks8695_priv** %6, align 8
  %11 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_TX_DESC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock_irq(i32* %21)
  %23 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %23, i32* %3, align 4
  br label %165

24:                                               ; preds = %2
  %25 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %28, i32 0, i32 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %36 = call i32 @BUG_ON(%struct.sk_buff* %35)
  %37 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_TO_DEVICE, align 4
  %47 = call i32 @dma_map_single(i32 %39, i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dma_mapping_error(i32 %50, i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %24
  %56 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %60 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %66, i32* %3, align 4
  br label %165

67:                                               ; preds = %24
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %70 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %69, i32 0, i32 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %78 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %77, i32 0, i32 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store %struct.sk_buff* %76, %struct.sk_buff** %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %88 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %87, i32 0, i32 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 4
  %94 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %95 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %104 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i8* %102, i8** %109, align 8
  %110 = load i32, i32* @TDES_IC, align 4
  %111 = load i32, i32* @TDES_FS, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @TDES_LS, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @TDES_TBS, align 4
  %119 = and i32 %117, %118
  %120 = or i32 %114, %119
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %123 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i8* %121, i8** %128, align 8
  %129 = call i32 (...) @wmb()
  %130 = load i32, i32* @TDES_OWN, align 4
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %133 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i8* %131, i8** %138, align 8
  %139 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %140 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* @MAX_TX_DESC, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %67
  %146 = load %struct.net_device*, %struct.net_device** %5, align 8
  %147 = call i32 @netif_stop_queue(%struct.net_device* %146)
  br label %148

148:                                              ; preds = %145, %67
  %149 = load i32, i32* @jiffies, align 4
  %150 = load %struct.net_device*, %struct.net_device** %5, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %153 = load i32, i32* @KS8695_DTSC, align 4
  %154 = call i32 @ks8695_writereg(%struct.ks8695_priv* %152, i32 %153, i32 0)
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @MAX_TX_DESC_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %160 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %162 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %161, i32 0, i32 2
  %163 = call i32 @spin_unlock_irq(i32* %162)
  %164 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %148, %55, %19
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.ks8695_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
