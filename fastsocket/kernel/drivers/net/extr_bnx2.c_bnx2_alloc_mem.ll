; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32, i32**, i64*, %struct.TYPE_6__*, i64, i64, i8*, %struct.bnx2_napi* }
%struct.TYPE_6__ = type { i32 }
%struct.bnx2_napi = type { i32, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.status_block_msix*, %struct.TYPE_4__* }
%struct.status_block_msix = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BNX2_FLAG_MSIX_CAP = common dso_local global i32 0, align 4
@BNX2_MAX_MSIX_HW_VEC = common dso_local global i32 0, align 4
@BNX2_SBLK_MSIX_ALIGN_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_mem(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2_napi*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.status_block_msix*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %10 = call i32 @L1_CACHE_ALIGN(i32 4)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @BNX2_MAX_MSIX_HW_VEC, align 4
  %19 = load i32, i32* @BNX2_SBLK_MSIX_ALIGN_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @L1_CACHE_ALIGN(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %29, i32 0, i32 6
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %36, i32 0, i32 7
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load i32, i32* @__GFP_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @dma_alloc_coherent(i32* %32, i32 %35, i64* %37, i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  br label %202

45:                                               ; preds = %22
  %46 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 10
  %48 = load %struct.bnx2_napi*, %struct.bnx2_napi** %47, align 8
  %49 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %48, i64 0
  store %struct.bnx2_napi* %49, %struct.bnx2_napi** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_4__*
  %52 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %53 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %54, align 8
  %55 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %56 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %61 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %63 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %68 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %116

75:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %112, %75
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %79 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %76
  %83 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %83, i32 0, i32 10
  %85 = load %struct.bnx2_napi*, %struct.bnx2_napi** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %85, i64 %87
  store %struct.bnx2_napi* %88, %struct.bnx2_napi** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* @BNX2_SBLK_MSIX_ALIGN_SIZE, align 4
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %89, i64 %93
  %95 = bitcast i8* %94 to %struct.status_block_msix*
  store %struct.status_block_msix* %95, %struct.status_block_msix** %9, align 8
  %96 = load %struct.status_block_msix*, %struct.status_block_msix** %9, align 8
  %97 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %98 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.status_block_msix* %96, %struct.status_block_msix** %99, align 8
  %100 = load %struct.status_block_msix*, %struct.status_block_msix** %9, align 8
  %101 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %100, i32 0, i32 1
  %102 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %103 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  %104 = load %struct.status_block_msix*, %struct.status_block_msix** %9, align 8
  %105 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %104, i32 0, i32 0
  %106 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %107 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load i32, i32* %4, align 4
  %109 = shl i32 %108, 24
  %110 = load %struct.bnx2_napi*, %struct.bnx2_napi** %7, align 8
  %111 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %82
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %76

115:                                              ; preds = %76
  br label %116

116:                                              ; preds = %115, %45
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, i8* %117, i64 %119
  %121 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %122 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %121, i32 0, i32 9
  store i8* %120, i8** %122, align 8
  %123 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %124 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %130 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %129, i32 0, i32 8
  store i64 %128, i64* %130, align 8
  %131 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %132 = call i64 @BNX2_CHIP(%struct.bnx2* %131)
  %133 = load i64, i64* @BNX2_CHIP_5709, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %189

135:                                              ; preds = %116
  %136 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %137 = sdiv i32 8192, %136
  %138 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %139 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %141 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %146 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %145, i32 0, i32 3
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %135
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %185, %147
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %151 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %188

154:                                              ; preds = %148
  %155 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %156 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %155, i32 0, i32 6
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %160 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %161 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %160, i32 0, i32 5
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i8* @dma_alloc_coherent(i32* %158, i32 %159, i64* %165, i32 %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %170 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %169, i32 0, i32 4
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  store i32* %168, i32** %174, align 8
  %175 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %176 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %175, i32 0, i32 4
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %154
  br label %202

184:                                              ; preds = %154
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %148

188:                                              ; preds = %148
  br label %189

189:                                              ; preds = %188, %116
  %190 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %191 = call i32 @bnx2_alloc_rx_mem(%struct.bnx2* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %202

195:                                              ; preds = %189
  %196 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %197 = call i32 @bnx2_alloc_tx_mem(%struct.bnx2* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %202

201:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %207

202:                                              ; preds = %200, %194, %183, %44
  %203 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %204 = call i32 @bnx2_free_mem(%struct.bnx2* %203)
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %202, %201
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_alloc_rx_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_alloc_tx_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_mem(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
