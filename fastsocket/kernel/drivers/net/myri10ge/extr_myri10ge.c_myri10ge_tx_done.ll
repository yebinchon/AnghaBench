; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_tx_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_slice_state = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__, %struct.myri10ge_tx_buf }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.pci_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.myri10ge_tx_buf = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.netdev_queue = type { i32 }

@bus = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_slice_state*, i32)* @myri10ge_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_tx_done(%struct.myri10ge_slice_state* %0, i32 %1) #0 {
  %3 = alloca %struct.myri10ge_slice_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.myri10ge_tx_buf*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.myri10ge_slice_state* %0, %struct.myri10ge_slice_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %12 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %17 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %16, i32 0, i32 3
  store %struct.myri10ge_tx_buf* %17, %struct.myri10ge_tx_buf** %6, align 8
  br label %18

18:                                               ; preds = %142, %2
  %19 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %20 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %143

24:                                               ; preds = %18
  %25 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %26 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %29 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %33 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %32, i32 0, i32 7
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %41 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %40, i32 0, i32 7
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %46, align 8
  %47 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %48 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %47, i32 0, i32 7
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %24
  %57 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %58 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %62 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %61, i32 0, i32 7
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %56, %24
  %69 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %70 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %74 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %73, i32 0, i32 7
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @pci_unmap_len(%struct.TYPE_10__* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %82 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %81, i32 0, i32 7
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @pci_unmap_len_set(%struct.TYPE_10__* %86, i32 %87, i32 0)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %91, label %125

91:                                               ; preds = %68
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %96 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %94
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %103 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %91
  %112 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %113 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %114 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %113, i32 0, i32 7
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = load i32, i32* @bus, align 4
  %120 = call i32 @pci_unmap_addr(%struct.TYPE_10__* %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %123 = call i32 @pci_unmap_single(%struct.pci_dev* %112, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %111, %91
  br label %142

125:                                              ; preds = %68
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %130 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %131 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %130, i32 0, i32 7
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = load i32, i32* @bus, align 4
  %137 = call i32 @pci_unmap_addr(%struct.TYPE_10__* %135, i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %140 = call i32 @pci_unmap_page(%struct.pci_dev* %129, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %128, %125
  br label %142

142:                                              ; preds = %141, %124
  br label %18

143:                                              ; preds = %18
  %144 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %145 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %148 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %149 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %147, i64 %154
  %156 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %146, %struct.myri10ge_slice_state* %155)
  store %struct.netdev_queue* %156, %struct.netdev_queue** %7, align 8
  %157 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %158 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %157, i32 0, i32 0
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %190

165:                                              ; preds = %143
  %166 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %167 = call i64 @__netif_tx_trylock(%struct.netdev_queue* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %171 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %174 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %169
  %178 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %179 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %178, i32 0, i32 6
  store i64 0, i64* %179, align 8
  %180 = call i32 @htonl(i32 1)
  %181 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %182 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @put_be32(i32 %180, i32 %183)
  %185 = call i32 (...) @mb()
  %186 = call i32 (...) @mmiowb()
  br label %187

187:                                              ; preds = %177, %169
  %188 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %189 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %188)
  br label %190

190:                                              ; preds = %187, %165, %143
  %191 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %192 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %190
  %195 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %196 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %199 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %197, %200
  %202 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %203 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = ashr i32 %204, 1
  %206 = icmp slt i32 %201, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %194
  %208 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %6, align 8
  %209 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  %212 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %213 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %212)
  br label %214

214:                                              ; preds = %207, %194, %190
  ret void
}

declare dso_local i32 @pci_unmap_len(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pci_unmap_len_set(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, %struct.myri10ge_slice_state*) #1

declare dso_local i64 @__netif_tx_trylock(%struct.netdev_queue*) #1

declare dso_local i32 @put_be32(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
