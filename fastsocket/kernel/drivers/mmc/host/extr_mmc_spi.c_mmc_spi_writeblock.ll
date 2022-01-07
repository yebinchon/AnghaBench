; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_writeblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_writeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_host = type { i64, i32, i32, %struct.TYPE_2__*, %struct.scratch*, %struct.spi_device* }
%struct.TYPE_2__ = type { i64 }
%struct.scratch = type { i32*, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"write error (%d)\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"write error %02x (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_spi_host*, %struct.spi_transfer*, i64)* @mmc_spi_writeblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_spi_writeblock(%struct.mmc_spi_host* %0, %struct.spi_transfer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_spi_host*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scratch*, align 8
  %12 = alloca i32, align 4
  store %struct.mmc_spi_host* %0, %struct.mmc_spi_host** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %13, i32 0, i32 5
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %8, align 8
  %16 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %16, i32 0, i32 4
  %18 = load %struct.scratch*, %struct.scratch** %17, align 8
  store %struct.scratch* %18, %struct.scratch** %11, align 8
  %19 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @crc_itu_t(i32 0, i32 %28, i64 %31)
  %33 = call i32 @cpu_to_be16(i32 %32)
  %34 = load %struct.scratch*, %struct.scratch** %11, align 8
  %35 = getelementptr inbounds %struct.scratch, %struct.scratch* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %25, %3
  %37 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @dma_sync_single_for_device(i64 %44, i32 %47, i32 16, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %52 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %53 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %52, i32 0, i32 2
  %54 = call i32 @spi_sync(%struct.spi_device* %51, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %192

63:                                               ; preds = %50
  %64 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %65 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %70 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %73 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %76 = call i32 @dma_sync_single_for_cpu(i64 %71, i32 %74, i32 16, i32 %75)
  br label %77

77:                                               ; preds = %68, %63
  %78 = load %struct.scratch*, %struct.scratch** %11, align 8
  %79 = getelementptr inbounds %struct.scratch, %struct.scratch* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 24
  store i32 %83, i32* %12, align 4
  %84 = load %struct.scratch*, %struct.scratch** %11, align 8
  %85 = getelementptr inbounds %struct.scratch, %struct.scratch* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load %struct.scratch*, %struct.scratch** %11, align 8
  %93 = getelementptr inbounds %struct.scratch, %struct.scratch* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load %struct.scratch*, %struct.scratch** %11, align 8
  %101 = getelementptr inbounds %struct.scratch, %struct.scratch* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, -536870912
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %113, %77
  %110 = load i32, i32* %12, align 4
  %111 = and i32 %110, -2147483648
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %109

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = ashr i32 %117, 27
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  switch i32 %119, label %127 [
    i32 130, label %120
    i32 129, label %121
    i32 128, label %124
  ]

120:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %130

121:                                              ; preds = %116
  %122 = load i32, i32* @EILSEQ, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  br label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %9, align 4
  br label %130

127:                                              ; preds = %116
  %128 = load i32, i32* @EPROTO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %127, %124, %121, %120
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %135 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %134, i32 0, i32 0
  %136 = load %struct.scratch*, %struct.scratch** %11, align 8
  %137 = getelementptr inbounds %struct.scratch, %struct.scratch* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %4, align 4
  br label %192

144:                                              ; preds = %130
  %145 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %146 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %149 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  %154 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %155 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %144
  %159 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %160 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %163 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 8
  br label %168

168:                                              ; preds = %158, %144
  store i32 4, i32* %10, align 4
  br label %169

169:                                              ; preds = %185, %168
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ult i64 %171, 8
  br i1 %172, label %173, label %188

173:                                              ; preds = %169
  %174 = load %struct.scratch*, %struct.scratch** %11, align 8
  %175 = getelementptr inbounds %struct.scratch, %struct.scratch* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %192

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %169

188:                                              ; preds = %169
  %189 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host* %189, i64 %190)
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %188, %183, %133, %57
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @crc_itu_t(i32, i32, i64) #1

declare dso_local i32 @dma_sync_single_for_device(i64, i32, i32, i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @dma_sync_single_for_cpu(i64, i32, i32, i32) #1

declare dso_local i32 @mmc_spi_wait_unbusy(%struct.mmc_spi_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
