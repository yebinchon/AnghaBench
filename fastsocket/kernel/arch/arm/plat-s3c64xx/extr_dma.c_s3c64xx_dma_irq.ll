; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_s3c64xx_dma_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_s3c64xx_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c64xx_dmac = type { i64, %struct.s3c2410_dma_chan* }
%struct.s3c2410_dma_chan = type { i32, %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff* }
%struct.s3c64xx_dma_buff = type { %struct.s3c64xx_dma_buff* }

@PL080_TC_STATUS = common dso_local global i64 0, align 8
@PL080_ERR_STATUS = common dso_local global i64 0, align 8
@S3C2410_RES_ERR = common dso_local global i32 0, align 4
@PL080_TC_CLEAR = common dso_local global i64 0, align 8
@S3C2410_RES_OK = common dso_local global i32 0, align 4
@PL080_ERR_CLEAR = common dso_local global i64 0, align 8
@S3C2410_DMAF_CIRCULAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c64xx_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c64xx_dmac*, align 8
  %6 = alloca %struct.s3c2410_dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.s3c64xx_dma_buff*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.s3c64xx_dmac*
  store %struct.s3c64xx_dmac* %14, %struct.s3c64xx_dmac** %5, align 8
  %15 = load %struct.s3c64xx_dmac*, %struct.s3c64xx_dmac** %5, align 8
  %16 = getelementptr inbounds %struct.s3c64xx_dmac, %struct.s3c64xx_dmac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PL080_TC_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.s3c64xx_dmac*, %struct.s3c64xx_dmac** %5, align 8
  %22 = getelementptr inbounds %struct.s3c64xx_dmac, %struct.s3c64xx_dmac* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PL080_ERR_STATUS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %170, %2
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %175

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %170

41:                                               ; preds = %35, %30
  %42 = load %struct.s3c64xx_dmac*, %struct.s3c64xx_dmac** %5, align 8
  %43 = getelementptr inbounds %struct.s3c64xx_dmac, %struct.s3c64xx_dmac* %42, i32 0, i32 1
  %44 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %44, i64 %46
  store %struct.s3c2410_dma_chan* %47, %struct.s3c2410_dma_chan** %6, align 8
  %48 = load i32, i32* @S3C2410_RES_ERR, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.s3c64xx_dmac*, %struct.s3c64xx_dmac** %5, align 8
  %56 = getelementptr inbounds %struct.s3c64xx_dmac, %struct.s3c64xx_dmac* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PL080_TC_CLEAR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load i32, i32* @S3C2410_RES_OK, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %53, %41
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.s3c64xx_dmac*, %struct.s3c64xx_dmac** %5, align 8
  %70 = getelementptr inbounds %struct.s3c64xx_dmac, %struct.s3c64xx_dmac* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PL080_ERR_CLEAR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %77 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %76, i32 0, i32 3
  %78 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %77, align 8
  store %struct.s3c64xx_dma_buff* %78, %struct.s3c64xx_dma_buff** %12, align 8
  br label %79

79:                                               ; preds = %98, %75
  %80 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %81 = icmp ne %struct.s3c64xx_dma_buff* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %84 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %85 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %84, i32 0, i32 1
  %86 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %85, align 8
  %87 = icmp ne %struct.s3c64xx_dma_buff* %83, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %90 = getelementptr inbounds %struct.s3c64xx_dma_buff, %struct.s3c64xx_dma_buff* %89, i32 0, i32 0
  %91 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %90, align 8
  %92 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %93 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %92, i32 0, i32 1
  %94 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %93, align 8
  %95 = icmp ne %struct.s3c64xx_dma_buff* %91, %94
  br label %96

96:                                               ; preds = %88, %82, %79
  %97 = phi i1 [ false, %82 ], [ false, %79 ], [ %95, %88 ]
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %100 = getelementptr inbounds %struct.s3c64xx_dma_buff, %struct.s3c64xx_dma_buff* %99, i32 0, i32 0
  %101 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %100, align 8
  store %struct.s3c64xx_dma_buff* %101, %struct.s3c64xx_dma_buff** %12, align 8
  br label %79

102:                                              ; preds = %96
  %103 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %104 = icmp ne %struct.s3c64xx_dma_buff* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = call i32 (...) @BUG()
  br label %107

107:                                              ; preds = %105, %102
  %108 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %109 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %110 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %109, i32 0, i32 1
  %111 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %110, align 8
  %112 = icmp eq %struct.s3c64xx_dma_buff* %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %115 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %114, i32 0, i32 2
  %116 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %115, align 8
  store %struct.s3c64xx_dma_buff* %116, %struct.s3c64xx_dma_buff** %12, align 8
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %119 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @s3c64xx_dma_bufffdone(%struct.s3c2410_dma_chan* %118, %struct.s3c64xx_dma_buff* %119, i32 %120)
  %122 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %123 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @S3C2410_DMAF_CIRCULAR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %117
  %129 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %130 = getelementptr inbounds %struct.s3c64xx_dma_buff, %struct.s3c64xx_dma_buff* %129, i32 0, i32 0
  %131 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %130, align 8
  %132 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %133 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %132, i32 0, i32 3
  store %struct.s3c64xx_dma_buff* %131, %struct.s3c64xx_dma_buff** %133, align 8
  %134 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %135 = call i32 @s3c64xx_dma_freebuff(%struct.s3c64xx_dma_buff* %134)
  br label %136

136:                                              ; preds = %128, %117
  %137 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %138 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %137, i32 0, i32 1
  %139 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %138, align 8
  store %struct.s3c64xx_dma_buff* %139, %struct.s3c64xx_dma_buff** %12, align 8
  %140 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %141 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %140, i32 0, i32 1
  %142 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %141, align 8
  %143 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %144 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %143, i32 0, i32 2
  %145 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %144, align 8
  %146 = icmp eq %struct.s3c64xx_dma_buff* %142, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %136
  %148 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %149 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %148, i32 0, i32 3
  %150 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %149, align 8
  %151 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %152 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %151, i32 0, i32 1
  store %struct.s3c64xx_dma_buff* %150, %struct.s3c64xx_dma_buff** %152, align 8
  %153 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %154 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @S3C2410_DMAF_CIRCULAR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %147
  %160 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %161 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %160, i32 0, i32 2
  store %struct.s3c64xx_dma_buff* null, %struct.s3c64xx_dma_buff** %161, align 8
  br label %162

162:                                              ; preds = %159, %147
  br label %169

163:                                              ; preds = %136
  %164 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %12, align 8
  %165 = getelementptr inbounds %struct.s3c64xx_dma_buff, %struct.s3c64xx_dma_buff* %164, i32 0, i32 0
  %166 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %165, align 8
  %167 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %168 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %167, i32 0, i32 1
  store %struct.s3c64xx_dma_buff* %166, %struct.s3c64xx_dma_buff** %168, align 8
  br label %169

169:                                              ; preds = %163, %162
  br label %170

170:                                              ; preds = %169, %40
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %10, align 4
  %174 = shl i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %27

175:                                              ; preds = %27
  %176 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %176
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @s3c64xx_dma_bufffdone(%struct.s3c2410_dma_chan*, %struct.s3c64xx_dma_buff*, i32) #1

declare dso_local i32 @s3c64xx_dma_freebuff(%struct.s3c64xx_dma_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
