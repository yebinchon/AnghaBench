; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_setup_dmaring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_setup_dmaring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, i32, i32, i32, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, i32, i32, i32, i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@B43legacy_RXRING_SLOTS = common dso_local global i32 0, align 4
@B43legacy_TXRING_SLOTS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@B43legacy_DMA0_RX_BUFFERSIZE = common dso_local global i32 0, align 4
@B43legacy_DMA0_RX_FRAMEOFFSET = common dso_local global i32 0, align 4
@B43legacy_DMA3_RX_BUFFERSIZE = common dso_local global i32 0, align 4
@B43legacy_DMA3_RX_FRAMEOFFSET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43legacy_dmaring* (%struct.b43legacy_wldev*, i32, i32, i32)* @b43legacy_setup_dmaring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43legacy_dmaring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.b43legacy_dmaring* @kzalloc(i32 64, i32 %13)
  store %struct.b43legacy_dmaring* %14, %struct.b43legacy_dmaring** %9, align 8
  %15 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %16 = icmp ne %struct.b43legacy_dmaring* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %176

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %21 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %23 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %24 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %23, i32 0, i32 11
  store %struct.b43legacy_wldev* %22, %struct.b43legacy_wldev** %24, align 8
  %25 = load i32, i32* @B43legacy_RXRING_SLOTS, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @B43legacy_TXRING_SLOTS, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 4, i32 %32)
  %34 = bitcast i8* %33 to %struct.b43legacy_dmaring*
  %35 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %36 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %35, i32 0, i32 5
  store %struct.b43legacy_dmaring* %34, %struct.b43legacy_dmaring** %36, align 8
  %37 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %38 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %37, i32 0, i32 5
  %39 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %38, align 8
  %40 = icmp ne %struct.b43legacy_dmaring* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %191

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %116

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = bitcast i8* %48 to %struct.b43legacy_dmaring*
  %50 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %51 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %50, i32 0, i32 6
  store %struct.b43legacy_dmaring* %49, %struct.b43legacy_dmaring** %51, align 8
  %52 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %53 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %52, i32 0, i32 6
  %54 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %53, align 8
  %55 = icmp ne %struct.b43legacy_dmaring* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %186

57:                                               ; preds = %45
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %59 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %64 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %63, i32 0, i32 6
  %65 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %64, align 8
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @dma_map_single(i32 %62, %struct.b43legacy_dmaring* %65, i32 4, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring* %68, i32 %69, i32 4, i32 1)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %57
  %73 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %74 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %73, i32 0, i32 6
  %75 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %74, align 8
  %76 = call i32 @kfree(%struct.b43legacy_dmaring* %75)
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load i32, i32* @GFP_DMA, align 4
  %80 = or i32 %78, %79
  %81 = call i8* @kcalloc(i32 %77, i32 4, i32 %80)
  %82 = bitcast i8* %81 to %struct.b43legacy_dmaring*
  %83 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %84 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %83, i32 0, i32 6
  store %struct.b43legacy_dmaring* %82, %struct.b43legacy_dmaring** %84, align 8
  %85 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %86 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %85, i32 0, i32 6
  %87 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %86, align 8
  %88 = icmp ne %struct.b43legacy_dmaring* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %72
  br label %186

90:                                               ; preds = %72
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %92 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %97 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %96, i32 0, i32 6
  %98 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %97, align 8
  %99 = load i32, i32* @DMA_TO_DEVICE, align 4
  %100 = call i32 @dma_map_single(i32 %95, %struct.b43legacy_dmaring* %98, i32 4, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring* %101, i32 %102, i32 4, i32 1)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %181

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106, %57
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %109 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @DMA_TO_DEVICE, align 4
  %115 = call i32 @dma_unmap_single(i32 %112, i32 %113, i32 4, i32 %114)
  br label %116

116:                                              ; preds = %107, %42
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %119 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @b43legacy_dmacontroller_base(i32 %120, i32 %121)
  %123 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %124 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %123, i32 0, i32 10
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %127 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %116
  %131 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %132 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %131, i32 0, i32 3
  store i32 1, i32* %132, align 4
  %133 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %134 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %133, i32 0, i32 4
  store i32 -1, i32* %134, align 8
  br label %163

135:                                              ; preds = %116
  %136 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %137 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* @B43legacy_DMA0_RX_BUFFERSIZE, align 4
  %142 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %143 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %142, i32 0, i32 9
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* @B43legacy_DMA0_RX_FRAMEOFFSET, align 4
  %145 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %146 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  br label %162

147:                                              ; preds = %135
  %148 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %149 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i32, i32* @B43legacy_DMA3_RX_BUFFERSIZE, align 4
  %154 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %155 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* @B43legacy_DMA3_RX_FRAMEOFFSET, align 4
  %157 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %158 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 4
  br label %161

159:                                              ; preds = %147
  %160 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %161

161:                                              ; preds = %159, %152
  br label %162

162:                                              ; preds = %161, %140
  br label %163

163:                                              ; preds = %162, %130
  %164 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %165 = call i32 @alloc_ringmemory(%struct.b43legacy_dmaring* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %181

169:                                              ; preds = %163
  %170 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %171 = call i32 @dmacontroller_setup(%struct.b43legacy_dmaring* %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %178

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %191, %175, %17
  %177 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  ret %struct.b43legacy_dmaring* %177

178:                                              ; preds = %174
  %179 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %180 = call i32 @free_ringmemory(%struct.b43legacy_dmaring* %179)
  br label %181

181:                                              ; preds = %178, %168, %105
  %182 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %183 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %182, i32 0, i32 6
  %184 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %183, align 8
  %185 = call i32 @kfree(%struct.b43legacy_dmaring* %184)
  br label %186

186:                                              ; preds = %181, %89, %56
  %187 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %188 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %187, i32 0, i32 5
  %189 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %188, align 8
  %190 = call i32 @kfree(%struct.b43legacy_dmaring* %189)
  br label %191

191:                                              ; preds = %186, %41
  %192 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %9, align 8
  %193 = call i32 @kfree(%struct.b43legacy_dmaring* %192)
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %9, align 8
  br label %176
}

declare dso_local %struct.b43legacy_dmaring* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.b43legacy_dmaring*, i32, i32) #1

declare dso_local i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @b43legacy_dmacontroller_base(i32, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @alloc_ringmemory(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @dmacontroller_setup(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @free_ringmemory(%struct.b43legacy_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
