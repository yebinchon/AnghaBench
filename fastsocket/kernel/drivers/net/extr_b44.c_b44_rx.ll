; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.ring_info* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ring_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i64 }
%struct.rx_header = type { i32, i32 }

@B44_DMARX_STAT = common dso_local global i32 0, align 4
@DMARX_STAT_CDMASK = common dso_local global i32 0, align 4
@RX_PKT_BUF_SZ = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_PKT_OFFSET = common dso_local global i64 0, align 8
@RX_FLAG_ERRORS = common dso_local global i32 0, align 4
@RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@B44_DMARX_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*, i32)* @b44_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_rx(%struct.b44* %0, i32 %1) #0 {
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ring_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_header*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.b44* %0, %struct.b44** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.b44*, %struct.b44** %3, align 8
  %17 = load i32, i32* @B44_DMARX_STAT, align 4
  %18 = call i32 @br32(%struct.b44* %16, i32 %17)
  %19 = load i32, i32* @DMARX_STAT_CDMASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b44*, %struct.b44** %3, align 8
  %26 = getelementptr inbounds %struct.b44, %struct.b44* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %204, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %219

37:                                               ; preds = %35
  %38 = load %struct.b44*, %struct.b44** %3, align 8
  %39 = getelementptr inbounds %struct.b44, %struct.b44* %38, i32 0, i32 5
  %40 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %40, i64 %42
  store %struct.ring_info* %43, %struct.ring_info** %8, align 8
  %44 = load %struct.ring_info*, %struct.ring_info** %8, align 8
  %45 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %44, i32 0, i32 1
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %9, align 8
  %47 = load %struct.ring_info*, %struct.ring_info** %8, align 8
  %48 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load %struct.b44*, %struct.b44** %3, align 8
  %51 = getelementptr inbounds %struct.b44, %struct.b44* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* @RX_PKT_BUF_SZ, align 8
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_sync_single_for_cpu(i32 %54, i32 %55, i64 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.rx_header*
  store %struct.rx_header* %62, %struct.rx_header** %11, align 8
  %63 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %64 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le16_to_cpu(i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @RX_PKT_BUF_SZ, align 8
  %69 = load i64, i64* @RX_PKT_OFFSET, align 8
  %70 = sub nsw i64 %68, %69
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %37
  %73 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %74 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RX_FLAG_ERRORS, align 4
  %77 = call i32 @cpu_to_le16(i32 %76)
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72, %37
  br label %81

81:                                               ; preds = %141, %119, %80
  %82 = load %struct.b44*, %struct.b44** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.b44*, %struct.b44** %3, align 8
  %85 = getelementptr inbounds %struct.b44, %struct.b44* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @b44_recycle_rx(%struct.b44* %82, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %172, %81
  %89 = load %struct.b44*, %struct.b44** %3, align 8
  %90 = getelementptr inbounds %struct.b44, %struct.b44* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %204

96:                                               ; preds = %72
  %97 = load i64, i64* %12, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %114, %99
  %101 = call i32 @udelay(i32 2)
  %102 = call i32 (...) @barrier()
  %103 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %104 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le16_to_cpu(i32 %105)
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %100
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = icmp slt i32 %111, 5
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  br i1 %115, label %100, label %116

116:                                              ; preds = %114
  %117 = load i64, i64* %12, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %81

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %96
  %122 = load i64, i64* %12, align 8
  %123 = sub nsw i64 %122, 4
  store i64 %123, i64* %12, align 8
  %124 = load %struct.b44*, %struct.b44** %3, align 8
  %125 = getelementptr inbounds %struct.b44, %struct.b44* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %160, label %128

128:                                              ; preds = %121
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @RX_COPY_THRESHOLD, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %128
  %133 = load %struct.b44*, %struct.b44** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.b44*, %struct.b44** %3, align 8
  %136 = getelementptr inbounds %struct.b44, %struct.b44* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @b44_alloc_rx_skb(%struct.b44* %133, i32 %134, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %81

142:                                              ; preds = %132
  %143 = load %struct.b44*, %struct.b44** %3, align 8
  %144 = getelementptr inbounds %struct.b44, %struct.b44* %143, i32 0, i32 3
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %151 = call i32 @dma_unmap_single(i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* @RX_PKT_OFFSET, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @skb_put(%struct.sk_buff* %152, i64 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %158 = load i64, i64* @RX_PKT_OFFSET, align 8
  %159 = call i32 @skb_pull(%struct.sk_buff* %157, i64 %158)
  br label %187

160:                                              ; preds = %128, %121
  %161 = load %struct.b44*, %struct.b44** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.b44*, %struct.b44** %3, align 8
  %164 = getelementptr inbounds %struct.b44, %struct.b44* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @b44_recycle_rx(%struct.b44* %161, i32 %162, i32 %165)
  %167 = load i64, i64* %12, align 8
  %168 = add nsw i64 %167, 2
  %169 = call %struct.sk_buff* @dev_alloc_skb(i64 %168)
  store %struct.sk_buff* %169, %struct.sk_buff** %15, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %171 = icmp eq %struct.sk_buff* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %88

173:                                              ; preds = %160
  %174 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %175 = call i32 @skb_reserve(%struct.sk_buff* %174, i32 2)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %177 = load i64, i64* %12, align 8
  %178 = call i32 @skb_put(%struct.sk_buff* %176, i64 %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %180 = load i64, i64* @RX_PKT_OFFSET, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %12, align 8
  %185 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %179, i64 %180, i64 %183, i64 %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %186, %struct.sk_buff** %9, align 8
  br label %187

187:                                              ; preds = %173, %142
  %188 = load i32, i32* @CHECKSUM_NONE, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %192 = load %struct.b44*, %struct.b44** %3, align 8
  %193 = getelementptr inbounds %struct.b44, %struct.b44* %192, i32 0, i32 2
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = call i32 @eth_type_trans(%struct.sk_buff* %191, %struct.TYPE_6__* %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %199 = call i32 @netif_receive_skb(%struct.sk_buff* %198)
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %187, %88
  %205 = load %struct.b44*, %struct.b44** %3, align 8
  %206 = getelementptr inbounds %struct.b44, %struct.b44* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  %209 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %210 = sub nsw i32 %209, 1
  %211 = and i32 %208, %210
  %212 = load %struct.b44*, %struct.b44** %3, align 8
  %213 = getelementptr inbounds %struct.b44, %struct.b44* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %217 = sub nsw i32 %216, 1
  %218 = and i32 %215, %217
  store i32 %218, i32* %6, align 4
  br label %28

219:                                              ; preds = %35
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.b44*, %struct.b44** %3, align 8
  %222 = getelementptr inbounds %struct.b44, %struct.b44* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.b44*, %struct.b44** %3, align 8
  %224 = load i32, i32* @B44_DMARX_PTR, align 4
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 4
  %228 = trunc i64 %227 to i32
  %229 = call i32 @bw32(%struct.b44* %223, i32 %224, i32 %228)
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @b44_recycle_rx(%struct.b44*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @b44_alloc_rx_skb(%struct.b44*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i64, i64, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
