; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sundance.c_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sundance.c_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32**, %struct.TYPE_5__*, i32, %struct.sk_buff**, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.sk_buff = type { i32, %struct.net_device* }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ring(%struct.net_device* %0) #0 {
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
  store i64 0, i64* %9, align 8
  %10 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 11
  store i64 0, i64* %11, align 8
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 9
  store i64 0, i64* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 1520
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 16
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %81, %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RX_RING_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @RX_RING_SIZE, align 4
  %45 = srem i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 24
  %48 = add i64 %41, %47
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %52 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %51, i32 0, i32 6
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i8* %50, i8** %57, align 8
  %58 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %59 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %58, i32 0, i32 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %66 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %65, i32 0, i32 6
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* null, i8** %74, align 8
  %75 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %76 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %75, i32 0, i32 8
  %77 = load %struct.sk_buff**, %struct.sk_buff*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %77, i64 %79
  store %struct.sk_buff* null, %struct.sk_buff** %80, align 8
  br label %81

81:                                               ; preds = %37
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %33

84:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %148, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @RX_RING_SIZE, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %151

89:                                               ; preds = %85
  %90 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %91 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.sk_buff* @dev_alloc_skb(i32 %92)
  store %struct.sk_buff* %93, %struct.sk_buff** %5, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %96 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %95, i32 0, i32 8
  %97 = load %struct.sk_buff**, %struct.sk_buff*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %97, i64 %99
  store %struct.sk_buff* %94, %struct.sk_buff** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = icmp eq %struct.sk_buff* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %151

104:                                              ; preds = %89
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  store %struct.net_device* %105, %struct.net_device** %107, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = call i32 @skb_reserve(%struct.sk_buff* %108, i32 2)
  %110 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %111 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %117 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %120 = call i32 @pci_map_single(i32 %112, i32 %115, i32 %118, i32 %119)
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %123 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %122, i32 0, i32 6
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i8* %121, i8** %131, align 8
  %132 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %133 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @LastFrag, align 4
  %136 = or i32 %134, %135
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %139 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %138, i32 0, i32 6
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i8* %137, i8** %147, align 8
  br label %148

148:                                              ; preds = %104
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %85

151:                                              ; preds = %103, %85
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @RX_RING_SIZE, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %156 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %175, %151
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @TX_RING_SIZE, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %163 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %162, i32 0, i32 5
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  store i32* null, i32** %167, align 8
  %168 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %169 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %168, i32 0, i32 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %157

178:                                              ; preds = %157
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
