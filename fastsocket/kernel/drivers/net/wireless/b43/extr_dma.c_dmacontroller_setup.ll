; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_dmacontroller_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_dmacontroller_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i64, i32, i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@B43_DMA_64BIT = common dso_local global i64 0, align 8
@B43_DMA_ADDR_EXT = common dso_local global i32 0, align 4
@B43_DMA_ADDR_LOW = common dso_local global i32 0, align 4
@B43_DMA_ADDR_HIGH = common dso_local global i32 0, align 4
@B43_DMA64_TXENABLE = common dso_local global i32 0, align 4
@B43_DMA64_TXADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43_DMA64_TXADDREXT_MASK = common dso_local global i32 0, align 4
@B43_DMA64_TXPARITYDISABLE = common dso_local global i32 0, align 4
@B43_DMA64_TXCTL = common dso_local global i32 0, align 4
@B43_DMA64_TXRINGLO = common dso_local global i32 0, align 4
@B43_DMA64_TXRINGHI = common dso_local global i32 0, align 4
@B43_DMA32_TXENABLE = common dso_local global i32 0, align 4
@B43_DMA32_TXADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43_DMA32_TXADDREXT_MASK = common dso_local global i32 0, align 4
@B43_DMA32_TXPARITYDISABLE = common dso_local global i32 0, align 4
@B43_DMA32_TXCTL = common dso_local global i32 0, align 4
@B43_DMA32_TXRING = common dso_local global i32 0, align 4
@B43_DMA64_RXFROFF_SHIFT = common dso_local global i32 0, align 4
@B43_DMA64_RXENABLE = common dso_local global i32 0, align 4
@B43_DMA64_RXADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43_DMA64_RXADDREXT_MASK = common dso_local global i32 0, align 4
@B43_DMA64_RXPARITYDISABLE = common dso_local global i32 0, align 4
@B43_DMA64_RXCTL = common dso_local global i32 0, align 4
@B43_DMA64_RXRINGLO = common dso_local global i32 0, align 4
@B43_DMA64_RXRINGHI = common dso_local global i32 0, align 4
@B43_DMA64_RXINDEX = common dso_local global i32 0, align 4
@B43_DMA32_RXFROFF_SHIFT = common dso_local global i32 0, align 4
@B43_DMA32_RXENABLE = common dso_local global i32 0, align 4
@B43_DMA32_RXADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43_DMA32_RXADDREXT_MASK = common dso_local global i32 0, align 4
@B43_DMA32_RXPARITYDISABLE = common dso_local global i32 0, align 4
@B43_DMA32_RXCTL = common dso_local global i32 0, align 4
@B43_DMA32_RXRING = common dso_local global i32 0, align 4
@B43_DMA32_RXINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_dmaring*)* @dmacontroller_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmacontroller_setup(%struct.b43_dmaring* %0) #0 {
  %2 = alloca %struct.b43_dmaring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %2, align 8
  store i32 0, i32* %3, align 4
  %13 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %14 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %20 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %123

23:                                               ; preds = %1
  %24 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %25 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @B43_DMA_64BIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %23
  %30 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %31 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %34 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @B43_DMA_ADDR_EXT, align 4
  %39 = call i32 @b43_dma_address(%struct.TYPE_4__* %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %41 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @B43_DMA_ADDR_LOW, align 4
  %46 = call i32 @b43_dma_address(%struct.TYPE_4__* %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %48 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @B43_DMA_ADDR_HIGH, align 4
  %53 = call i32 @b43_dma_address(%struct.TYPE_4__* %50, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @B43_DMA64_TXENABLE, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @B43_DMA64_TXADDREXT_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @B43_DMA64_TXADDREXT_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %29
  %65 = load i32, i32* @B43_DMA64_TXPARITYDISABLE, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %29
  %69 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %70 = load i32, i32* @B43_DMA64_TXCTL, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @b43_dma_write(%struct.b43_dmaring* %69, i32 %70, i32 %71)
  %73 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %74 = load i32, i32* @B43_DMA64_TXRINGLO, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @b43_dma_write(%struct.b43_dmaring* %73, i32 %74, i32 %75)
  %77 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %78 = load i32, i32* @B43_DMA64_TXRINGHI, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @b43_dma_write(%struct.b43_dmaring* %77, i32 %78, i32 %79)
  br label %122

81:                                               ; preds = %23
  %82 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %83 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %10, align 4
  %85 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %86 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @B43_DMA_ADDR_EXT, align 4
  %91 = call i32 @b43_dma_address(%struct.TYPE_4__* %88, i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %93 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @B43_DMA_ADDR_LOW, align 4
  %98 = call i32 @b43_dma_address(%struct.TYPE_4__* %95, i32 %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @B43_DMA32_TXENABLE, align 4
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @B43_DMA32_TXADDREXT_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* @B43_DMA32_TXADDREXT_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %81
  %110 = load i32, i32* @B43_DMA32_TXPARITYDISABLE, align 4
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %81
  %114 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %115 = load i32, i32* @B43_DMA32_TXCTL, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @b43_dma_write(%struct.b43_dmaring* %114, i32 %115, i32 %116)
  %118 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %119 = load i32, i32* @B43_DMA32_TXRING, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @b43_dma_write(%struct.b43_dmaring* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %68
  br label %261

123:                                              ; preds = %1
  %124 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %125 = call i32 @alloc_initial_descbuffers(%struct.b43_dmaring* %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %262

129:                                              ; preds = %123
  %130 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %131 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @B43_DMA_64BIT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %203

135:                                              ; preds = %129
  %136 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %137 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %11, align 4
  %139 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %140 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %139, i32 0, i32 3
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @B43_DMA_ADDR_EXT, align 4
  %145 = call i32 @b43_dma_address(%struct.TYPE_4__* %142, i32 %143, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %147 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %146, i32 0, i32 3
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @B43_DMA_ADDR_LOW, align 4
  %152 = call i32 @b43_dma_address(%struct.TYPE_4__* %149, i32 %150, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %154 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %153, i32 0, i32 3
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @B43_DMA_ADDR_HIGH, align 4
  %159 = call i32 @b43_dma_address(%struct.TYPE_4__* %156, i32 %157, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %161 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @B43_DMA64_RXFROFF_SHIFT, align 4
  %164 = shl i32 %162, %163
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* @B43_DMA64_RXENABLE, align 4
  %166 = load i32, i32* %4, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @B43_DMA64_RXADDREXT_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = load i32, i32* @B43_DMA64_RXADDREXT_MASK, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* %4, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %135
  %178 = load i32, i32* @B43_DMA64_RXPARITYDISABLE, align 4
  %179 = load i32, i32* %4, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %177, %135
  %182 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %183 = load i32, i32* @B43_DMA64_RXCTL, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @b43_dma_write(%struct.b43_dmaring* %182, i32 %183, i32 %184)
  %186 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %187 = load i32, i32* @B43_DMA64_RXRINGLO, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @b43_dma_write(%struct.b43_dmaring* %186, i32 %187, i32 %188)
  %190 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %191 = load i32, i32* @B43_DMA64_RXRINGHI, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @b43_dma_write(%struct.b43_dmaring* %190, i32 %191, i32 %192)
  %194 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %195 = load i32, i32* @B43_DMA64_RXINDEX, align 4
  %196 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %197 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 4
  %201 = trunc i64 %200 to i32
  %202 = call i32 @b43_dma_write(%struct.b43_dmaring* %194, i32 %195, i32 %201)
  br label %260

203:                                              ; preds = %129
  %204 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %205 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %12, align 4
  %207 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %208 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %207, i32 0, i32 3
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @B43_DMA_ADDR_EXT, align 4
  %213 = call i32 @b43_dma_address(%struct.TYPE_4__* %210, i32 %211, i32 %212)
  store i32 %213, i32* %5, align 4
  %214 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %215 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %214, i32 0, i32 3
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @B43_DMA_ADDR_LOW, align 4
  %220 = call i32 @b43_dma_address(%struct.TYPE_4__* %217, i32 %218, i32 %219)
  store i32 %220, i32* %7, align 4
  %221 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %222 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @B43_DMA32_RXFROFF_SHIFT, align 4
  %225 = shl i32 %223, %224
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* @B43_DMA32_RXENABLE, align 4
  %227 = load i32, i32* %4, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %4, align 4
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @B43_DMA32_RXADDREXT_SHIFT, align 4
  %231 = shl i32 %229, %230
  %232 = load i32, i32* @B43_DMA32_RXADDREXT_MASK, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* %4, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %203
  %239 = load i32, i32* @B43_DMA32_RXPARITYDISABLE, align 4
  %240 = load i32, i32* %4, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %238, %203
  %243 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %244 = load i32, i32* @B43_DMA32_RXCTL, align 4
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @b43_dma_write(%struct.b43_dmaring* %243, i32 %244, i32 %245)
  %247 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %248 = load i32, i32* @B43_DMA32_RXRING, align 4
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @b43_dma_write(%struct.b43_dmaring* %247, i32 %248, i32 %249)
  %251 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %252 = load i32, i32* @B43_DMA32_RXINDEX, align 4
  %253 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %254 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = mul i64 %256, 4
  %258 = trunc i64 %257 to i32
  %259 = call i32 @b43_dma_write(%struct.b43_dmaring* %251, i32 %252, i32 %258)
  br label %260

260:                                              ; preds = %242, %181
  br label %261

261:                                              ; preds = %260, %122
  br label %262

262:                                              ; preds = %261, %128
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @b43_dma_address(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @b43_dma_write(%struct.b43_dmaring*, i32, i32) #1

declare dso_local i32 @alloc_initial_descbuffers(%struct.b43_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
