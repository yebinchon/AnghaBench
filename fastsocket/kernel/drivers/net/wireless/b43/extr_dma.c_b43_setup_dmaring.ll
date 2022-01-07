; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_setup_dmaring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_setup_dmaring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, i32, i32, i32, i32, %struct.b43_dmaring*, %struct.b43_dmaring*, i32, i32, i32, i32*, i32, %struct.b43_wldev*, i32 }
%struct.b43_wldev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@B43_RXRING_SLOTS = common dso_local global i32 0, align 4
@B43_TXRING_SLOTS = common dso_local global i32 0, align 4
@B43_DMA_PTR_POISON = common dso_local global i32 0, align 4
@B43_DMA_64BIT = common dso_local global i32 0, align 4
@dma64_ops = common dso_local global i32 0, align 4
@dma32_ops = common dso_local global i32 0, align 4
@B43_DMA0_RX_FW598_BUFSIZE = common dso_local global i32 0, align 4
@B43_DMA0_RX_FW598_FO = common dso_local global i32 0, align 4
@B43_DMA0_RX_FW351_BUFSIZE = common dso_local global i32 0, align 4
@B43_DMA0_RX_FW351_FO = common dso_local global i32 0, align 4
@TX_SLOTS_PER_FRAME = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TXHDR DMA allocation failed\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_dmaring* (%struct.b43_wldev*, i32, i32, i32)* @b43_setup_dmaring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_dmaring* @b43_setup_dmaring(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_dmaring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.b43_dmaring* @kzalloc(i32 88, i32 %13)
  store %struct.b43_dmaring* %14, %struct.b43_dmaring** %9, align 8
  %15 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %16 = icmp ne %struct.b43_dmaring* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %237

18:                                               ; preds = %4
  %19 = load i32, i32* @B43_RXRING_SLOTS, align 4
  %20 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %21 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @B43_TXRING_SLOTS, align 4
  %26 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %27 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %30 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 4, i32 %32)
  %34 = bitcast i8* %33 to %struct.b43_dmaring*
  %35 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %36 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %35, i32 0, i32 5
  store %struct.b43_dmaring* %34, %struct.b43_dmaring** %36, align 8
  %37 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %38 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %37, i32 0, i32 5
  %39 = load %struct.b43_dmaring*, %struct.b43_dmaring** %38, align 8
  %40 = icmp ne %struct.b43_dmaring* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %252

42:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %46 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* @B43_DMA_PTR_POISON, align 4
  %51 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %52 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %51, i32 0, i32 5
  %53 = load %struct.b43_dmaring*, %struct.b43_dmaring** %52, align 8
  %54 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %53, i32 0, i32 13
  store i32 %50, i32* %54, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %61 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %63 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %64 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %63, i32 0, i32 12
  store %struct.b43_wldev* %62, %struct.b43_wldev** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @b43_dmacontroller_base(i32 %65, i32 %66)
  %68 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %69 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %72 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @B43_DMA_64BIT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %58
  %77 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %78 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %77, i32 0, i32 10
  store i32* @dma64_ops, i32** %78, align 8
  br label %82

79:                                               ; preds = %58
  %80 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %81 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %80, i32 0, i32 10
  store i32* @dma32_ops, i32** %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %87 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %89 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %88, i32 0, i32 4
  store i32 -1, i32* %89, align 8
  br label %118

90:                                               ; preds = %82
  %91 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %92 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %97 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %114 [
    i32 128, label %100
    i32 129, label %107
    i32 130, label %107
  ]

100:                                              ; preds = %95
  %101 = load i32, i32* @B43_DMA0_RX_FW598_BUFSIZE, align 4
  %102 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %103 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @B43_DMA0_RX_FW598_FO, align 4
  %105 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %106 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  br label %114

107:                                              ; preds = %95, %95
  %108 = load i32, i32* @B43_DMA0_RX_FW351_BUFSIZE, align 4
  %109 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %110 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @B43_DMA0_RX_FW351_FO, align 4
  %112 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %113 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %95, %107, %100
  br label %117

115:                                              ; preds = %90
  %116 = call i32 @B43_WARN_ON(i32 1)
  br label %117

117:                                              ; preds = %115, %114
  br label %118

118:                                              ; preds = %117, %85
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %224

121:                                              ; preds = %118
  %122 = load i32, i32* @B43_TXRING_SLOTS, align 4
  %123 = load i32, i32* @TX_SLOTS_PER_FRAME, align 4
  %124 = srem i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @BUILD_BUG_ON(i32 %126)
  %128 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %129 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TX_SLOTS_PER_FRAME, align 4
  %132 = sdiv i32 %130, %131
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %134 = call i32 @b43_txhdr_size(%struct.b43_wldev* %133)
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @kcalloc(i32 %132, i32 %134, i32 %135)
  %137 = bitcast i8* %136 to %struct.b43_dmaring*
  %138 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %139 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %138, i32 0, i32 6
  store %struct.b43_dmaring* %137, %struct.b43_dmaring** %139, align 8
  %140 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %141 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %140, i32 0, i32 6
  %142 = load %struct.b43_dmaring*, %struct.b43_dmaring** %141, align 8
  %143 = icmp ne %struct.b43_dmaring* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %121
  br label %247

145:                                              ; preds = %121
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %147 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %152 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %151, i32 0, i32 6
  %153 = load %struct.b43_dmaring*, %struct.b43_dmaring** %152, align 8
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %155 = call i32 @b43_txhdr_size(%struct.b43_wldev* %154)
  %156 = load i32, i32* @DMA_TO_DEVICE, align 4
  %157 = call i32 @dma_map_single(i32 %150, %struct.b43_dmaring* %153, i32 %155, i32 %156)
  store i32 %157, i32* %12, align 4
  %158 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %161 = call i32 @b43_txhdr_size(%struct.b43_wldev* %160)
  %162 = call i64 @b43_dma_mapping_error(%struct.b43_dmaring* %158, i32 %159, i32 %161, i32 1)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %213

164:                                              ; preds = %145
  %165 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %166 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %165, i32 0, i32 6
  %167 = load %struct.b43_dmaring*, %struct.b43_dmaring** %166, align 8
  %168 = call i32 @kfree(%struct.b43_dmaring* %167)
  %169 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %170 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TX_SLOTS_PER_FRAME, align 4
  %173 = sdiv i32 %171, %172
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %175 = call i32 @b43_txhdr_size(%struct.b43_wldev* %174)
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = load i32, i32* @GFP_DMA, align 4
  %178 = or i32 %176, %177
  %179 = call i8* @kcalloc(i32 %173, i32 %175, i32 %178)
  %180 = bitcast i8* %179 to %struct.b43_dmaring*
  %181 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %182 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %181, i32 0, i32 6
  store %struct.b43_dmaring* %180, %struct.b43_dmaring** %182, align 8
  %183 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %184 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %183, i32 0, i32 6
  %185 = load %struct.b43_dmaring*, %struct.b43_dmaring** %184, align 8
  %186 = icmp ne %struct.b43_dmaring* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %164
  br label %247

188:                                              ; preds = %164
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %190 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %195 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %194, i32 0, i32 6
  %196 = load %struct.b43_dmaring*, %struct.b43_dmaring** %195, align 8
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %198 = call i32 @b43_txhdr_size(%struct.b43_wldev* %197)
  %199 = load i32, i32* @DMA_TO_DEVICE, align 4
  %200 = call i32 @dma_map_single(i32 %193, %struct.b43_dmaring* %196, i32 %198, i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %204 = call i32 @b43_txhdr_size(%struct.b43_wldev* %203)
  %205 = call i64 @b43_dma_mapping_error(%struct.b43_dmaring* %201, i32 %202, i32 %204, i32 1)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %188
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %209 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @b43err(i32 %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %242

212:                                              ; preds = %188
  br label %213

213:                                              ; preds = %212, %145
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %215 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %214, i32 0, i32 0
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %221 = call i32 @b43_txhdr_size(%struct.b43_wldev* %220)
  %222 = load i32, i32* @DMA_TO_DEVICE, align 4
  %223 = call i32 @dma_unmap_single(i32 %218, i32 %219, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %213, %118
  %225 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %226 = call i32 @alloc_ringmemory(%struct.b43_dmaring* %225)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %242

230:                                              ; preds = %224
  %231 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %232 = call i32 @dmacontroller_setup(%struct.b43_dmaring* %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %239

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %252, %236, %17
  %238 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  ret %struct.b43_dmaring* %238

239:                                              ; preds = %235
  %240 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %241 = call i32 @free_ringmemory(%struct.b43_dmaring* %240)
  br label %242

242:                                              ; preds = %239, %229, %207
  %243 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %244 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %243, i32 0, i32 6
  %245 = load %struct.b43_dmaring*, %struct.b43_dmaring** %244, align 8
  %246 = call i32 @kfree(%struct.b43_dmaring* %245)
  br label %247

247:                                              ; preds = %242, %187, %144
  %248 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %249 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %248, i32 0, i32 5
  %250 = load %struct.b43_dmaring*, %struct.b43_dmaring** %249, align 8
  %251 = call i32 @kfree(%struct.b43_dmaring* %250)
  br label %252

252:                                              ; preds = %247, %41
  %253 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %254 = call i32 @kfree(%struct.b43_dmaring* %253)
  store %struct.b43_dmaring* null, %struct.b43_dmaring** %9, align 8
  br label %237
}

declare dso_local %struct.b43_dmaring* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @b43_dmacontroller_base(i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @b43_txhdr_size(%struct.b43_wldev*) #1

declare dso_local i32 @dma_map_single(i32, %struct.b43_dmaring*, i32, i32) #1

declare dso_local i64 @b43_dma_mapping_error(%struct.b43_dmaring*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.b43_dmaring*) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @alloc_ringmemory(%struct.b43_dmaring*) #1

declare dso_local i32 @dmacontroller_setup(%struct.b43_dmaring*) #1

declare dso_local i32 @free_ringmemory(%struct.b43_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
