; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_set_dma_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_set_dma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i64, i64, i32, i32, %struct.scatterlist, %struct.tifm_dev* }
%struct.scatterlist = type { i32 }
%struct.tifm_dev = type { i64, i32 }
%struct.mmc_data = type { i32, i32, %struct.scatterlist* }

@TIFM_DMA_TSIZE = common dso_local global i32 0, align 4
@DATA_CARRY = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"setting dma for %d blocks\0A\00", align 1
@SOCK_DMA_ADDRESS = common dso_local global i64 0, align 8
@TIFM_DMA_TX = common dso_local global i32 0, align 4
@TIFM_DMA_EN = common dso_local global i32 0, align 4
@SOCK_DMA_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_sd*, %struct.mmc_data*)* @tifm_sd_set_dma_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_sd_set_dma_data(%struct.tifm_sd* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tifm_sd*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.tifm_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i64, align 8
  store %struct.tifm_sd* %0, %struct.tifm_sd** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %13 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %14 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %13, i32 0, i32 5
  %15 = load %struct.tifm_dev*, %struct.tifm_dev** %14, align 8
  store %struct.tifm_dev* %15, %struct.tifm_dev** %6, align 8
  %16 = load i32, i32* @TIFM_DMA_TSIZE, align 4
  %17 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul i32 %16, %19
  store i32 %20, i32* %7, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %11, align 8
  %21 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %22 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %25 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %216

29:                                               ; preds = %2
  %30 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %31 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DATA_CARRY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = load i32, i32* @DATA_CARRY, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %40 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @local_irq_save(i64 %43)
  %45 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %46 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %47 = call i32 @tifm_sd_bounce_block(%struct.tifm_sd* %45, %struct.mmc_data* %46)
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  %50 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %51 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %54 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %216

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %60, i32 0, i32 2
  %62 = load %struct.scatterlist*, %struct.scatterlist** %61, align 8
  %63 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %64 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i64 %65
  %67 = call i32 @sg_dma_len(%struct.scatterlist* %66)
  %68 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %69 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %67, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %59
  %75 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %76 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %78 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %82 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %85 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %216

89:                                               ; preds = %74
  %90 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %91 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %90, i32 0, i32 2
  %92 = load %struct.scatterlist*, %struct.scatterlist** %91, align 8
  %93 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %94 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %92, i64 %95
  %97 = call i32 @sg_dma_len(%struct.scatterlist* %96)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %89, %59
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %105 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = udiv i32 %103, %106
  store i32 %107, i32* %9, align 4
  %108 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %109 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %113 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul i32 %111, %114
  %116 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %117 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %130

120:                                              ; preds = %98
  %121 = load i32, i32* @TIFM_DMA_TSIZE, align 4
  store i32 %121, i32* %9, align 4
  %122 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %123 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %127 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %120, %102
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %135 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %134, i32 0, i32 2
  %136 = load %struct.scatterlist*, %struct.scatterlist** %135, align 8
  %137 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %138 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %136, i64 %139
  store %struct.scatterlist* %140, %struct.scatterlist** %11, align 8
  br label %170

141:                                              ; preds = %130
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %141
  %145 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %146 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MMC_DATA_WRITE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @local_irq_save(i64 %152)
  %154 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %155 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %156 = call i32 @tifm_sd_bounce_block(%struct.tifm_sd* %154, %struct.mmc_data* %155)
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @local_irq_restore(i64 %157)
  br label %165

159:                                              ; preds = %144
  %160 = load i32, i32* @DATA_CARRY, align 4
  %161 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %162 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %151
  %166 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %167 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %166, i32 0, i32 4
  store %struct.scatterlist* %167, %struct.scatterlist** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %169

168:                                              ; preds = %141
  store i32 1, i32* %3, align 4
  br label %216

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169, %133
  %171 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %172 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %171, i32 0, i32 1
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @dev_dbg(i32* %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %176 = call i32 @sg_dma_address(%struct.scatterlist* %175)
  %177 = load i32, i32* %10, align 4
  %178 = add i32 %176, %177
  %179 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %180 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SOCK_DMA_ADDRESS, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  %185 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %186 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @MMC_DATA_WRITE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %170
  %192 = load i32, i32* %9, align 4
  %193 = shl i32 %192, 8
  %194 = load i32, i32* @TIFM_DMA_TX, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @TIFM_DMA_EN, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %199 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @SOCK_DMA_CONTROL, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @writel(i32 %197, i64 %202)
  br label %215

204:                                              ; preds = %170
  %205 = load i32, i32* %9, align 4
  %206 = shl i32 %205, 8
  %207 = load i32, i32* @TIFM_DMA_EN, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %210 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SOCK_DMA_CONTROL, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @writel(i32 %208, i64 %213)
  br label %215

215:                                              ; preds = %204, %191
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %168, %88, %57, %28
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @tifm_sd_bounce_block(%struct.tifm_sd*, %struct.mmc_data*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
