; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_priv = type { %struct.TYPE_6__*, i8**, i8**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PKT_BUF_SIZE = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_priv*)* @ep93xx_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_alloc_buffers(%struct.ep93xx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ep93xx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ep93xx_priv* %0, %struct.ep93xx_priv** %3, align 8
  %9 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %9, i32 0, i32 3
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @GFP_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.TYPE_6__* @dma_alloc_coherent(i32* null, i32 4, i32* %10, i32 %13)
  %15 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %15, i32 0, i32 0
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %16, align 8
  %17 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %198

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %119, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %122

27:                                               ; preds = %23
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @GFP_DMA, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @__get_free_page(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %195

36:                                               ; preds = %27
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i8* @dma_map_single(i32* null, i8* %37, i32 %38, i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @dma_mapping_error(i32* null, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = call i32 @free_page(i64 %46)
  br label %195

48:                                               ; preds = %36
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %49, i8** %55, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %56, i8** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* @PKT_BUF_SIZE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %71 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %69, i32* %78, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* @PKT_BUF_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %79, i64 %81
  %83 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %84 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* %82, i8** %89, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* @PKT_BUF_SIZE, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  %94 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %95 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i8* %93, i8** %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  %106 = shl i32 %105, 16
  %107 = load i32, i32* @PKT_BUF_SIZE, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %110 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %108, i32* %118, align 8
  br label %119

119:                                              ; preds = %48
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %4, align 4
  br label %23

122:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %191, %122
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %194

127:                                              ; preds = %123
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = load i32, i32* @GFP_DMA, align 4
  %130 = or i32 %128, %129
  %131 = call i64 @__get_free_page(i32 %130)
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %195

136:                                              ; preds = %127
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = load i32, i32* @DMA_TO_DEVICE, align 4
  %140 = call i8* @dma_map_single(i32* null, i8* %137, i32 %138, i32 %139)
  store i8* %140, i8** %8, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i64 @dma_mapping_error(i32* null, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i8*, i8** %7, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = call i32 @free_page(i64 %146)
  br label %195

148:                                              ; preds = %136
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %151 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %150, i32 0, i32 1
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  store i8* %149, i8** %155, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %158 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i8* %156, i8** %165, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load i32, i32* @PKT_BUF_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr i8, i8* %166, i64 %168
  %170 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %171 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %170, i32 0, i32 1
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %172, i64 %175
  store i8* %169, i8** %176, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* @PKT_BUF_SIZE, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr i8, i8* %177, i64 %179
  %181 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %182 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  store i8* %180, i8** %190, align 8
  br label %191

191:                                              ; preds = %148
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 2
  store i32 %193, i32* %4, align 4
  br label %123

194:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %198

195:                                              ; preds = %144, %135, %44, %35
  %196 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %197 = call i32 @ep93xx_free_buffers(%struct.ep93xx_priv* %196)
  store i32 1, i32* %2, align 4
  br label %198

198:                                              ; preds = %195, %194, %21
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.TYPE_6__* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @ep93xx_free_buffers(%struct.ep93xx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
