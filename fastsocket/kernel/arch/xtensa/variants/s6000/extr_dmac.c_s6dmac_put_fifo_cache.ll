; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_dmac.c_s6dmac_put_fifo_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_dmac.c_s6dmac_put_fifo_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S6_DMA_CMONCHUNK = common dso_local global i64 0, align 8
@S6_DMA_SRCSKIP = common dso_local global i64 0, align 8
@S6_DMA_DSTSKIP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s6dmac_put_fifo_cache(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @xtensa_need_flush_dma_source(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %100

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @DMA_CHNL(i32 %29, i32 %30)
  %32 = load i64, i64* @S6_DMA_CMONCHUNK, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %96

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @DMA_CHNL(i32 %42, i32 %43)
  %45 = load i64, i64* @S6_DMA_SRCSKIP, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %13, align 4
  %53 = sdiv i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %41
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %95

63:                                               ; preds = %41
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 0, %64
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %70, %71
  %73 = mul nsw i32 %69, %72
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %12, align 4
  br label %94

80:                                               ; preds = %63
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %15, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i32 @max(i32 %85, i32 %92)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %80, %68
  br label %95

95:                                               ; preds = %94, %57
  br label %96

96:                                               ; preds = %95, %37, %26
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @flush_dcache_unaligned(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %5
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @xtensa_need_invalidate_dma_destination(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %178

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @DMA_CHNL(i32 %107, i32 %108)
  %110 = load i64, i64* @S6_DMA_CMONCHUNK, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readl(i64 %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %174

115:                                              ; preds = %104
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %174

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @DMA_CHNL(i32 %120, i32 %121)
  %123 = load i64, i64* @S6_DMA_DSTSKIP, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @readl(i64 %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %126, %127
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %19, align 4
  %131 = sdiv i32 %129, %130
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %119
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %20, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %18, align 4
  br label %173

141:                                              ; preds = %119
  %142 = load i32, i32* %20, align 4
  %143 = sub nsw i32 0, %142
  %144 = load i32, i32* %19, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %148, %149
  %151 = mul nsw i32 %147, %150
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %22, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %18, align 4
  br label %172

158:                                              ; preds = %141
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %20, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %159, %162
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %21, align 4
  %168 = mul nsw i32 %166, %167
  %169 = load i32, i32* %20, align 4
  %170 = sub nsw i32 %168, %169
  %171 = call i32 @max(i32 %163, i32 %170)
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %158, %146
  br label %173

173:                                              ; preds = %172, %135
  br label %174

174:                                              ; preds = %173, %115, %104
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @invalidate_dcache_unaligned(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %100
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @s6dmac_put_fifo(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  ret void
}

declare dso_local i64 @xtensa_need_flush_dma_source(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DMA_CHNL(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @flush_dcache_unaligned(i32, i32) #1

declare dso_local i64 @xtensa_need_invalidate_dma_destination(i32) #1

declare dso_local i32 @invalidate_dcache_unaligned(i32, i32) #1

declare dso_local i32 @s6dmac_put_fifo(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
