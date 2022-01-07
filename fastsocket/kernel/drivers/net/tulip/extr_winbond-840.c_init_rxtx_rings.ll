; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_winbond-840.c_init_rxtx_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_winbond-840.c_init_rxtx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i64, i64, i64, i64, i64, i64, %struct.w840_tx_desc*, i32**, i64, %struct.TYPE_2__*, i32*, i32, i32, %struct.sk_buff**, %struct.TYPE_2__* }
%struct.w840_tx_desc = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@RX_RING_SIZE = common dso_local global i64 0, align 8
@DescEndRing = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i64 0, align 8
@TX_RING_SIZE = common dso_local global i32 0, align 4
@RxRingPtr = common dso_local global i64 0, align 8
@TxRingPtr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @init_rxtx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rxtx_rings(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  %8 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 10
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 15
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @RX_RING_SIZE, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = bitcast %struct.TYPE_2__* %18 to %struct.w840_tx_desc*
  %20 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 7
  store %struct.w840_tx_desc* %19, %struct.w840_tx_desc** %21, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %51, %1
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @RX_RING_SIZE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 10
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %30, i32* %37, align 4
  %38 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 10
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %46 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %45, i32 0, i32 14
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  store %struct.sk_buff* null, %struct.sk_buff** %50, align 8
  br label %51

51:                                               ; preds = %27
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load i32, i32* @DescEndRing, align 4
  %56 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %57 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %56, i32 0, i32 10
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %55
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %126, %54
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @RX_RING_SIZE, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %129

71:                                               ; preds = %66
  %72 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %73 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.sk_buff* @dev_alloc_skb(i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %5, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %78 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %77, i32 0, i32 14
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %79, i64 %81
  store %struct.sk_buff* %76, %struct.sk_buff** %82, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = icmp eq %struct.sk_buff* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %129

86:                                               ; preds = %71
  %87 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %88 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %94 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %93, i32 0, i32 12
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %97 = call i32 @pci_map_single(i32 %89, i32 %92, i32 %95, i32 %96)
  %98 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %99 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %98, i32 0, i32 11
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %105 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %104, i32 0, i32 11
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %112 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %111, i32 0, i32 10
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 8
  %118 = load i64, i64* @DescOwned, align 8
  %119 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %120 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %119, i32 0, i32 10
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 %118, i64* %125, align 8
  br label %126

126:                                              ; preds = %86
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %66

129:                                              ; preds = %85, %66
  %130 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %131 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %130, i32 0, i32 9
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* @RX_RING_SIZE, align 8
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %138 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %157, %129
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @TX_RING_SIZE, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %145 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %144, i32 0, i32 8
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  store i32* null, i32** %149, align 8
  %150 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %151 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %150, i32 0, i32 7
  %152 = load %struct.w840_tx_desc*, %struct.w840_tx_desc** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.w840_tx_desc, %struct.w840_tx_desc* %152, i64 %154
  %156 = getelementptr inbounds %struct.w840_tx_desc, %struct.w840_tx_desc* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %143
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %139

160:                                              ; preds = %139
  %161 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %162 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %161, i32 0, i32 6
  store i64 0, i64* %162, align 8
  %163 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %164 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %163, i32 0, i32 3
  store i64 0, i64* %164, align 8
  %165 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %166 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %165, i32 0, i32 4
  store i64 0, i64* %166, align 8
  %167 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %168 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %167, i32 0, i32 5
  store i64 0, i64* %168, align 8
  %169 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %170 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %173 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @RxRingPtr, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @iowrite32(i64 %171, i64 %176)
  %178 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %179 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @RX_RING_SIZE, align 8
  %182 = mul i64 4, %181
  %183 = add i64 %180, %182
  %184 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %185 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @TxRingPtr, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @iowrite32(i64 %183, i64 %188)
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
