; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cs5535.c_cs5535_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cs5535.c_cs5535_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@XFER_SW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@cs5535_pio_cmd_timings = common dso_local global i32* null, align 8
@cs5535_pio_dta_timings = common dso_local global i32* null, align 8
@ATAC_CH0D1_PIO = common dso_local global i32 0, align 4
@ATAC_CH0D0_PIO = common dso_local global i32 0, align 4
@ATAC_CH0D1_DMA = common dso_local global i32 0, align 4
@ATAC_CH0D0_DMA = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_4 = common dso_local global i64 0, align 8
@cs5535_udma_timings = common dso_local global i32* null, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_2 = common dso_local global i64 0, align 8
@cs5535_mwdma_timings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @cs5535_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5535_set_speed(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @XFER_SW_DMA_0, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %126

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call %struct.TYPE_6__* @ide_get_pair_dev(%struct.TYPE_6__* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @XFER_PIO_0, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %10, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = call i64 @ide_get_best_pio_mode(%struct.TYPE_6__* %29, i32 255, i32 4)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %28
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = load i32*, i32** @cs5535_pio_dta_timings, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %42, %46
  store i32 %47, i32* %5, align 4
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @ATAC_CH0D1_PIO, align 4
  br label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @ATAC_CH0D0_PIO, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @wrmsr(i32 %55, i32 %56, i32 0)
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @ATAC_CH0D0_PIO, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @ATAC_CH0D1_PIO, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @rdmsr(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 16
  %71 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %70, %74
  %76 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %64
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, 65535
  store i32 %83, i32* %5, align 4
  %84 = load i32*, i32** @cs5535_pio_cmd_timings, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 16
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* @ATAC_CH0D0_PIO, align 4
  br label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @ATAC_CH0D1_PIO, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @wrmsr(i32 %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %97, %64
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @rdmsr(i32 %109, i32 %110, i32 %111)
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = or i64 %122, 2147483648
  %124 = trunc i64 %123 to i32
  %125 = call i32 @wrmsr(i32 %120, i32 %124, i32 0)
  br label %188

126:                                              ; preds = %2
  %127 = load i64, i64* %7, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @rdmsr(i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = and i64 %139, 2147483648
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %5, align 4
  %142 = load i64, i64* %4, align 8
  %143 = load i64, i64* @XFER_UDMA_0, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %133
  %146 = load i64, i64* %4, align 8
  %147 = load i64, i64* @XFER_UDMA_4, align 8
  %148 = icmp sle i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32*, i32** @cs5535_udma_timings, align 8
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* @XFER_UDMA_0, align 8
  %153 = sub nsw i64 %151, %152
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  br label %177

158:                                              ; preds = %145, %133
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* @XFER_MW_DMA_0, align 8
  %161 = icmp sge i64 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* @XFER_MW_DMA_2, align 8
  %165 = icmp sle i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i32*, i32** @cs5535_mwdma_timings, align 8
  %168 = load i64, i64* %4, align 8
  %169 = load i64, i64* @XFER_MW_DMA_0, align 8
  %170 = sub nsw i64 %168, %169
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %5, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %5, align 4
  br label %176

175:                                              ; preds = %162, %158
  br label %188

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %149
  %178 = load i64, i64* %7, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32, i32* @ATAC_CH0D1_DMA, align 4
  br label %184

182:                                              ; preds = %177
  %183 = load i32, i32* @ATAC_CH0D0_DMA, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @wrmsr(i32 %185, i32 %186, i32 0)
  br label %188

188:                                              ; preds = %175, %184, %119
  ret void
}

declare dso_local %struct.TYPE_6__* @ide_get_pair_dev(%struct.TYPE_6__*) #1

declare dso_local i64 @ide_get_best_pio_mode(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
