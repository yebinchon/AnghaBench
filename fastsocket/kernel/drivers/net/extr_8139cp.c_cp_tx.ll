; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, i32, %struct.TYPE_6__*, %struct.sk_buff**, %struct.TYPE_4__*, %struct.cp_desc* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.cp_desc = type { i32, i32 }

@DescOwn = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@TxError = common dso_local global i32 0, align 4
@TxFIFOUnder = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: tx err, status 0x%x\0A\00", align 1
@TxOWC = common dso_local global i32 0, align 4
@TxMaxCol = common dso_local global i32 0, align 4
@TxLinkFail = common dso_local global i32 0, align 4
@TxColCntShift = common dso_local global i32 0, align 4
@TxColCntMask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: tx done, slot %d\0A\00", align 1
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_tx(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cp_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %8 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %9 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %12 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %193, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %202

18:                                               ; preds = %14
  %19 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %20 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %19, i32 0, i32 5
  %21 = load %struct.cp_desc*, %struct.cp_desc** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %21, i64 %23
  store %struct.cp_desc* %24, %struct.cp_desc** %5, align 8
  %25 = call i32 (...) @rmb()
  %26 = load %struct.cp_desc*, %struct.cp_desc** %5, align 8
  %27 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DescOwn, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %202

35:                                               ; preds = %18
  %36 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %37 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %36, i32 0, i32 3
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %49 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.cp_desc*, %struct.cp_desc** %5, align 8
  %53 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le64_to_cpu(i32 %54)
  %56 = load %struct.cp_desc*, %struct.cp_desc** %5, align 8
  %57 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = and i32 %59, 65535
  %61 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %62 = call i32 @dma_unmap_single(i32* %51, i32 %55, i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @LastFrag, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %193

67:                                               ; preds = %35
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @TxError, align 4
  %70 = load i32, i32* @TxFIFOUnder, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %146

74:                                               ; preds = %67
  %75 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %76 = call i64 @netif_msg_tx_err(%struct.cp_private* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %80 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %74
  %87 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %88 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @TxOWC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %86
  %99 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %100 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %98, %86
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @TxMaxCol, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %113 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %111, %106
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @TxLinkFail, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %126 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %124, %119
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @TxFIFOUnder, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %139 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %132
  br label %190

146:                                              ; preds = %67
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @TxColCntShift, align 4
  %149 = ashr i32 %147, %148
  %150 = load i32, i32* @TxColCntMask, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %153 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %151
  store i32 %158, i32* %156, align 4
  %159 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %160 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %159, i32 0, i32 2
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %170 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %169, i32 0, i32 2
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %168
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  %178 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %179 = call i64 @netif_msg_tx_done(%struct.cp_private* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %146
  %182 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %183 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %181, %146
  br label %190

190:                                              ; preds = %189, %145
  %191 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %192 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %191)
  br label %193

193:                                              ; preds = %190, %35
  %194 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %195 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %194, i32 0, i32 3
  %196 = load %struct.sk_buff**, %struct.sk_buff*** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %196, i64 %198
  store %struct.sk_buff* null, %struct.sk_buff** %199, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @NEXT_TX(i32 %200)
  store i32 %201, i32* %4, align 4
  br label %14

202:                                              ; preds = %34, %14
  %203 = load i32, i32* %4, align 4
  %204 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %205 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %207 = call i64 @TX_BUFFS_AVAIL(%struct.cp_private* %206)
  %208 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %209 = add nsw i64 %208, 1
  %210 = icmp sgt i64 %207, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %202
  %212 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %213 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %212, i32 0, i32 2
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = call i32 @netif_wake_queue(%struct.TYPE_6__* %214)
  br label %216

216:                                              ; preds = %211, %202
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.cp_private*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i64 @netif_msg_tx_done(%struct.cp_private*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.cp_private*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
