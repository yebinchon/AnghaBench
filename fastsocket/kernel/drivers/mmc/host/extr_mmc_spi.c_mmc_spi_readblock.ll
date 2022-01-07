; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_readblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_readblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_host = type { i32, i64, %struct.TYPE_2__*, i32, %struct.scratch*, %struct.spi_device* }
%struct.TYPE_2__ = type { i64 }
%struct.scratch = type { i32*, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"read error %02x (%d)\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"read - crc error: crc_val=0x%04x, computed=0x%04x len=%d\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_spi_host*, %struct.spi_transfer*, i64)* @mmc_spi_readblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_spi_readblock(%struct.mmc_spi_host* %0, %struct.spi_transfer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_spi_host*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scratch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mmc_spi_host* %0, %struct.mmc_spi_host** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %18, i32 0, i32 5
  %20 = load %struct.spi_device*, %struct.spi_device** %19, align 8
  store %struct.spi_device* %20, %struct.spi_device** %8, align 8
  %21 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %21, i32 0, i32 4
  %23 = load %struct.scratch*, %struct.scratch** %22, align 8
  store %struct.scratch* %23, %struct.scratch** %10, align 8
  %24 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %25 = call i32 @mmc_spi_readbytes(%struct.mmc_spi_host* %24, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %234

30:                                               ; preds = %3
  %31 = load %struct.scratch*, %struct.scratch** %10, align 8
  %32 = getelementptr inbounds %struct.scratch, %struct.scratch* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %30
  %42 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @mmc_spi_readtoken(%struct.mmc_spi_host* %42, i64 %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %234

55:                                               ; preds = %45
  store i32 7, i32* %11, align 4
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %11, align 4
  br label %56

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %69 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %80 = call i32 @dma_sync_single_for_device(i64 %75, i32 %78, i32 16, i32 %79)
  %81 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %82 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %88 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @dma_sync_single_for_device(i64 %83, i32 %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %72, %65
  %93 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %94 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %95 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %94, i32 0, i32 3
  %96 = call i32 @spi_sync(%struct.spi_device* %93, i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %98 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %92
  %102 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %103 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %109 = call i32 @dma_sync_single_for_cpu(i64 %104, i32 %107, i32 16, i32 %108)
  %110 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %111 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %114 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %117 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %120 = call i32 @dma_sync_single_for_cpu(i64 %112, i32 %115, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %101, %92
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %175

124:                                              ; preds = %121
  %125 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %126 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %13, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sub i32 8, %128
  store i32 %129, i32* %15, align 4
  %130 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %131 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %149, %124
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %11, align 4
  %142 = lshr i32 %140, %141
  %143 = or i32 %139, %142
  %144 = load i32*, i32** %13, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %13, align 8
  store i32 %143, i32* %144, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %15, align 4
  %148 = shl i32 %146, %147
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %14, align 4
  %151 = add i32 %150, -1
  store i32 %151, i32* %14, align 4
  br label %133

152:                                              ; preds = %133
  %153 = load %struct.scratch*, %struct.scratch** %10, align 8
  %154 = getelementptr inbounds %struct.scratch, %struct.scratch* %153, i32 0, i32 1
  store i32* %154, i32** %13, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %11, align 4
  %160 = lshr i32 %158, %159
  %161 = or i32 %157, %160
  %162 = load i32*, i32** %13, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %13, align 8
  store i32 %161, i32* %162, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %15, align 4
  %166 = shl i32 %164, %165
  store i32 %166, i32* %12, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %11, align 4
  %172 = lshr i32 %170, %171
  %173 = or i32 %169, %172
  %174 = load i32*, i32** %13, align 8
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %152, %121
  %176 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %177 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %212

182:                                              ; preds = %175
  %183 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %184 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %187 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @crc_itu_t(i32 0, i32* %185, i32 %188)
  store i32 %189, i32* %17, align 4
  %190 = load %struct.scratch*, %struct.scratch** %10, align 8
  %191 = getelementptr inbounds %struct.scratch, %struct.scratch* %190, i32 0, i32 1
  %192 = call i32 @be16_to_cpus(i32* %191)
  %193 = load %struct.scratch*, %struct.scratch** %10, align 8
  %194 = getelementptr inbounds %struct.scratch, %struct.scratch* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %182
  %199 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %200 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %199, i32 0, i32 0
  %201 = load %struct.scratch*, %struct.scratch** %10, align 8
  %202 = getelementptr inbounds %struct.scratch, %struct.scratch* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %206 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %200, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %204, i32 %207)
  %209 = load i32, i32* @EILSEQ, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %234

211:                                              ; preds = %182
  br label %212

212:                                              ; preds = %211, %175
  %213 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %214 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %217 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = sext i32 %215 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %217, align 8
  %221 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %222 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %212
  %226 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %227 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %230 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %225, %212
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %233, %198, %48, %28
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @mmc_spi_readbytes(%struct.mmc_spi_host*, i32) #1

declare dso_local i32 @mmc_spi_readtoken(%struct.mmc_spi_host*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @dma_sync_single_for_device(i64, i32, i32, i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i64, i32, i32, i32) #1

declare dso_local i32 @crc_itu_t(i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
