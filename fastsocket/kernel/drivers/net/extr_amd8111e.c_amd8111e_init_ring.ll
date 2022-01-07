; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__*, i64, i32*, %struct.TYPE_5__**, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i8*, i64, i64, i8* }
%struct.TYPE_5__ = type { i32 }

@NUM_TX_RING_DR = common dso_local global i32 0, align 4
@NUM_RX_RING_DR = common dso_local global i32 0, align 4
@NUM_RX_BUFFERS = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@OWN_BIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.amd8111e_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.amd8111e_priv* %7, %struct.amd8111e_priv** %4, align 8
  %8 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %8, i32 0, i32 11
  store i64 0, i64* %9, align 8
  %10 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %10, i32 0, i32 12
  store i64 0, i64* %11, align 8
  %12 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %13 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %15 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @amd8111e_free_skbs(%struct.net_device* %21)
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %25 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NUM_TX_RING_DR, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %32 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %31, i32 0, i32 0
  %33 = call i8* @pci_alloc_consistent(i32 %26, i32 %30, i32* %32)
  %34 = bitcast i8* %33 to %struct.TYPE_6__*
  %35 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %36 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %35, i32 0, i32 1
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %36, align 8
  %37 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %237

39:                                               ; preds = %23
  %40 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NUM_RX_RING_DR, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %48 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %47, i32 0, i32 3
  %49 = call i8* @pci_alloc_consistent(i32 %42, i32 %46, i32* %48)
  %50 = bitcast i8* %49 to %struct.TYPE_6__*
  %51 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %52 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %51, i32 0, i32 4
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  %53 = icmp eq %struct.TYPE_6__* %50, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %222

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %20
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @amd8111e_set_rx_buff_len(%struct.net_device* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %103, %56
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NUM_RX_BUFFERS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %59
  %64 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %65 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.TYPE_5__* @dev_alloc_skb(i64 %66)
  %68 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %69 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %68, i32 0, i32 7
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %70, i64 %72
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %73, align 8
  %74 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %74, label %94, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %90, %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %83 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %82, i32 0, i32 7
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @dev_kfree_skb(%struct.TYPE_5__* %88)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %5, align 4
  br label %78

93:                                               ; preds = %78
  br label %207

94:                                               ; preds = %63
  %95 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %96 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %95, i32 0, i32 7
  %97 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %97, i64 %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call i32 @skb_reserve(%struct.TYPE_5__* %101, i32 2)
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %59

106:                                              ; preds = %59
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %173, %106
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @NUM_RX_BUFFERS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %176

111:                                              ; preds = %107
  %112 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %113 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %116 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %115, i32 0, i32 7
  %117 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %117, i64 %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %125 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 2
  %128 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %129 = call i32 @pci_map_single(i32 %114, i32 %123, i64 %127, i32 %128)
  %130 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %131 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %137 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @cpu_to_le32(i32 %142)
  %144 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %145 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  store i64 %143, i64* %150, align 8
  %151 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %152 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, 2
  %155 = call i8* @cpu_to_le16(i64 %154)
  %156 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %157 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %156, i32 0, i32 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i8* %155, i8** %162, align 8
  %163 = call i32 (...) @wmb()
  %164 = load i64, i64* @OWN_BIT, align 8
  %165 = call i8* @cpu_to_le16(i64 %164)
  %166 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %167 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %166, i32 0, i32 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  store i8* %165, i8** %172, align 8
  br label %173

173:                                              ; preds = %111
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %107

176:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %203, %176
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @NUM_TX_RING_DR, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %177
  %182 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %183 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  store i64 0, i64* %188, align 8
  %189 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %190 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %197 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %196, i32 0, i32 1
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i8* null, i8** %202, align 8
  br label %203

203:                                              ; preds = %181
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %177

206:                                              ; preds = %177
  store i32 0, i32* %2, align 4
  br label %240

207:                                              ; preds = %93
  %208 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %209 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @NUM_RX_RING_DR, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 4, %212
  %214 = trunc i64 %213 to i32
  %215 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %216 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %215, i32 0, i32 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %219 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @pci_free_consistent(i32 %210, i32 %214, %struct.TYPE_6__* %217, i32 %220)
  br label %222

222:                                              ; preds = %207, %54
  %223 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %224 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @NUM_TX_RING_DR, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 4, %227
  %229 = trunc i64 %228 to i32
  %230 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %231 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %230, i32 0, i32 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %234 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @pci_free_consistent(i32 %225, i32 %229, %struct.TYPE_6__* %232, i32 %235)
  br label %237

237:                                              ; preds = %222, %38
  %238 = load i32, i32* @ENOMEM, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %237, %206
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @amd8111e_free_skbs(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @amd8111e_set_rx_buff_len(%struct.net_device*) #1

declare dso_local %struct.TYPE_5__* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_5__*) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
