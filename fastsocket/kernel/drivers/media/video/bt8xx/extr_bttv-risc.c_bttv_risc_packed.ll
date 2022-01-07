; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_risc_packed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_risc_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i32* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BT848_RISC_SYNC = common dso_local global i32 0, align 4
@BT848_FIFO_STATUS_FM1 = common dso_local global i32 0, align 4
@BT848_RISC_SKIP = common dso_local global i32 0, align 4
@BT848_RISC_SOL = common dso_local global i32 0, align 4
@BT848_RISC_EOL = common dso_local global i32 0, align 4
@VCR_HACK_LINES = common dso_local global i32 0, align 4
@BT848_RISC_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_risc_packed(%struct.bttv* %0, %struct.btcx_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.bttv*, align 8
  %11 = alloca %struct.btcx_riscmem*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.scatterlist*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %10, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load i32, i32* %16, align 4
  %25 = mul i32 %24, 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = add i32 %26, %27
  %29 = load i32, i32* %17, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = udiv i32 %30, %31
  %33 = add i32 1, %32
  %34 = load i32, i32* %17, align 4
  %35 = add i32 %33, %34
  %36 = mul i32 %35, 8
  %37 = load i32, i32* %18, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 16
  store i32 %40, i32* %18, align 4
  %41 = load %struct.bttv*, %struct.bttv** %10, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @btcx_riscmem_alloc(i32 %44, %struct.btcx_riscmem* %45, i32 %46)
  store i32 %47, i32* %23, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %8
  %50 = load i32, i32* %23, align 4
  store i32 %50, i32* %9, align 4
  br label %253

51:                                               ; preds = %8
  %52 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %53 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %22, align 8
  %55 = load i32, i32* @BT848_RISC_SYNC, align 4
  %56 = load i32, i32* @BT848_FIFO_STATUS_FM1, align 4
  %57 = or i32 %55, %56
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %22, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %22, align 8
  store i32 %59, i32* %60, align 4
  %62 = call i8* @cpu_to_le32(i32 0)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %22, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %22, align 8
  store i32 %63, i32* %64, align 4
  br label %66

66:                                               ; preds = %70, %51
  %67 = load i32, i32* %16, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %16, align 4
  %69 = icmp ugt i32 %67, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32, i32* @BT848_RISC_SKIP, align 4
  %72 = load i32, i32* @BT848_RISC_SOL, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @BT848_RISC_EOL, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %75, %76
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %22, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %22, align 8
  store i32 %79, i32* %80, align 4
  br label %66

82:                                               ; preds = %66
  %83 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %83, %struct.scatterlist** %21, align 8
  store i32 0, i32* %19, align 4
  br label %84

84:                                               ; preds = %227, %82
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %230

88:                                               ; preds = %84
  %89 = load %struct.bttv*, %struct.bttv** %10, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @VCR_HACK_LINES, align 4
  %97 = sub i32 %95, %96
  %98 = icmp uge i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %227

100:                                              ; preds = %93, %88
  br label %101

101:                                              ; preds = %111, %100
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %107 = call i32 @sg_dma_len(%struct.scatterlist* %106)
  %108 = icmp uge i32 %105, %107
  br label %109

109:                                              ; preds = %104, %101
  %110 = phi i1 [ false, %101 ], [ %108, %104 ]
  br i1 %110, label %111, label %118

111:                                              ; preds = %109
  %112 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %113 = call i32 @sg_dma_len(%struct.scatterlist* %112)
  %114 = load i32, i32* %13, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %117 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %116, i32 1
  store %struct.scatterlist* %117, %struct.scatterlist** %21, align 8
  br label %101

118:                                              ; preds = %109
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %121 = call i32 @sg_dma_len(%struct.scatterlist* %120)
  %122 = load i32, i32* %13, align 4
  %123 = sub i32 %121, %122
  %124 = icmp ule i32 %119, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %118
  %126 = load i32, i32* @BT848_RISC_WRITE, align 4
  %127 = load i32, i32* @BT848_RISC_SOL, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @BT848_RISC_EOL, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %130, %131
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load i32*, i32** %22, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %22, align 8
  store i32 %134, i32* %135, align 4
  %137 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %138 = call i32 @sg_dma_address(%struct.scatterlist* %137)
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %138, %139
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load i32*, i32** %22, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %22, align 8
  store i32 %142, i32* %143, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %13, align 4
  br label %223

148:                                              ; preds = %118
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* @BT848_RISC_WRITE, align 4
  %151 = load i32, i32* @BT848_RISC_SOL, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %154 = call i32 @sg_dma_len(%struct.scatterlist* %153)
  %155 = load i32, i32* %13, align 4
  %156 = sub i32 %154, %155
  %157 = or i32 %152, %156
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load i32*, i32** %22, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %22, align 8
  store i32 %159, i32* %160, align 4
  %162 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %163 = call i32 @sg_dma_address(%struct.scatterlist* %162)
  %164 = load i32, i32* %13, align 4
  %165 = add i32 %163, %164
  %166 = call i8* @cpu_to_le32(i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load i32*, i32** %22, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %22, align 8
  store i32 %167, i32* %168, align 4
  %170 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %171 = call i32 @sg_dma_len(%struct.scatterlist* %170)
  %172 = load i32, i32* %13, align 4
  %173 = sub i32 %171, %172
  %174 = load i32, i32* %20, align 4
  %175 = sub i32 %174, %173
  store i32 %175, i32* %20, align 4
  store i32 0, i32* %13, align 4
  %176 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %177 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %176, i32 1
  store %struct.scatterlist* %177, %struct.scatterlist** %21, align 8
  br label %178

178:                                              ; preds = %183, %148
  %179 = load i32, i32* %20, align 4
  %180 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %181 = call i32 @sg_dma_len(%struct.scatterlist* %180)
  %182 = icmp sgt i32 %179, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %178
  %184 = load i32, i32* @BT848_RISC_WRITE, align 4
  %185 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %186 = call i32 @sg_dma_len(%struct.scatterlist* %185)
  %187 = or i32 %184, %186
  %188 = call i8* @cpu_to_le32(i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load i32*, i32** %22, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %22, align 8
  store i32 %189, i32* %190, align 4
  %192 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %193 = call i32 @sg_dma_address(%struct.scatterlist* %192)
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = ptrtoint i8* %194 to i32
  %196 = load i32*, i32** %22, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %22, align 8
  store i32 %195, i32* %196, align 4
  %198 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %199 = call i32 @sg_dma_len(%struct.scatterlist* %198)
  %200 = load i32, i32* %20, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %20, align 4
  %202 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %203 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %202, i32 1
  store %struct.scatterlist* %203, %struct.scatterlist** %21, align 8
  br label %178

204:                                              ; preds = %178
  %205 = load i32, i32* @BT848_RISC_WRITE, align 4
  %206 = load i32, i32* @BT848_RISC_EOL, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %20, align 4
  %209 = or i32 %207, %208
  %210 = call i8* @cpu_to_le32(i32 %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = load i32*, i32** %22, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %213, i32** %22, align 8
  store i32 %211, i32* %212, align 4
  %214 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %215 = call i32 @sg_dma_address(%struct.scatterlist* %214)
  %216 = call i8* @cpu_to_le32(i32 %215)
  %217 = ptrtoint i8* %216 to i32
  %218 = load i32*, i32** %22, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %22, align 8
  store i32 %217, i32* %218, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %13, align 4
  %222 = add i32 %221, %220
  store i32 %222, i32* %13, align 4
  br label %223

223:                                              ; preds = %204, %125
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %13, align 4
  %226 = add i32 %225, %224
  store i32 %226, i32* %13, align 4
  br label %227

227:                                              ; preds = %223, %99
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %84

230:                                              ; preds = %84
  %231 = load i32*, i32** %22, align 8
  %232 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %233 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %232, i32 0, i32 2
  store i32* %231, i32** %233, align 8
  %234 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %235 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %238 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = ptrtoint i32* %236 to i64
  %241 = ptrtoint i32* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 4
  %244 = add nsw i64 %243, 2
  %245 = mul i64 %244, 4
  %246 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %247 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = icmp ugt i64 %245, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @BUG_ON(i32 %251)
  store i32 0, i32* %9, align 4
  br label %253

253:                                              ; preds = %230, %49
  %254 = load i32, i32* %9, align 4
  ret i32 %254
}

declare dso_local i32 @btcx_riscmem_alloc(i32, %struct.btcx_riscmem*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
