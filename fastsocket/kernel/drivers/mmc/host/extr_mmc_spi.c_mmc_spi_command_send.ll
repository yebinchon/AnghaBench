; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_command_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_command_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_spi_host = type { %struct.TYPE_7__*, i32, i64, %struct.TYPE_8__, %struct.spi_transfer, %struct.scratch* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32, i32, i32 }
%struct.scratch = type { i8** }
%struct.mmc_request = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_RSP_SPI_S2 = common dso_local global i32 0, align 4
@MMC_RSP_SPI_B4 = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"  mmc_spi: CMD%d, resp %s\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"  ... write returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_spi_host*, %struct.mmc_request*, %struct.mmc_command*, i32)* @mmc_spi_command_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_spi_command_send(%struct.mmc_spi_host* %0, %struct.mmc_request* %1, %struct.mmc_command* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_spi_host*, align 8
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca %struct.mmc_command*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scratch*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.spi_transfer*, align 8
  store %struct.mmc_spi_host* %0, %struct.mmc_spi_host** %6, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %7, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %16 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %15, i32 0, i32 5
  %17 = load %struct.scratch*, %struct.scratch** %16, align 8
  store %struct.scratch* %17, %struct.scratch** %10, align 8
  %18 = load %struct.scratch*, %struct.scratch** %10, align 8
  %19 = getelementptr inbounds %struct.scratch, %struct.scratch* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %11, align 8
  %21 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8**, i8*** %11, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %11, align 8
  %26 = bitcast i8** %24 to %struct.spi_transfer*
  %27 = call i32 @memset(%struct.spi_transfer* %26, i32 255, i32 8)
  %28 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 64, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8**, i8*** %11, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %11, align 8
  store i8* %33, i8** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 24
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8**, i8*** %11, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %11, align 8
  store i8* %39, i8** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %42, 16
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8**, i8*** %11, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %11, align 8
  store i8* %45, i8** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load i8**, i8*** %11, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %11, align 8
  store i8* %51, i8** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %11, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %11, align 8
  store i8* %56, i8** %57, align 8
  %59 = load %struct.scratch*, %struct.scratch** %10, align 8
  %60 = getelementptr inbounds %struct.scratch, %struct.scratch* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = call i32 @crc7(i32 0, i8** %62, i32 5)
  %64 = shl i32 %63, 1
  %65 = or i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8**, i8*** %11, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %11, align 8
  store i8* %67, i8** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %4
  %73 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %74 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MMC_DATA_READ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i8**, i8*** %11, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  store i8** %83, i8*** %11, align 8
  br label %121

84:                                               ; preds = %72, %4
  %85 = load i8**, i8*** %11, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 10
  store i8** %86, i8*** %11, align 8
  %87 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MMC_RSP_SPI_S2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i8**, i8*** %11, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %11, align 8
  br label %120

96:                                               ; preds = %84
  %97 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %98 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MMC_RSP_SPI_B4, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i8**, i8*** %11, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 4
  store i8** %105, i8*** %11, align 8
  br label %119

106:                                              ; preds = %96
  %107 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %108 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MMC_RSP_BUSY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.scratch*, %struct.scratch** %10, align 8
  %115 = getelementptr inbounds %struct.scratch, %struct.scratch* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 8
  store i8** %117, i8*** %11, align 8
  br label %118

118:                                              ; preds = %113, %106
  br label %119

119:                                              ; preds = %118, %103
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %81
  %122 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %123 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %127 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %130 = call i32 @maptype(%struct.mmc_command* %129)
  %131 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %130)
  %132 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %133 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %132, i32 0, i32 3
  %134 = call i32 @spi_message_init(%struct.TYPE_8__* %133)
  %135 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %136 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %135, i32 0, i32 4
  store %struct.spi_transfer* %136, %struct.spi_transfer** %14, align 8
  %137 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %138 = call i32 @memset(%struct.spi_transfer* %137, i32 0, i32 24)
  %139 = load %struct.scratch*, %struct.scratch** %10, align 8
  %140 = getelementptr inbounds %struct.scratch, %struct.scratch* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = ptrtoint i8** %141 to i32
  %143 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %144 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %146 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %145, i32 0, i32 5
  store i32 %142, i32* %146, align 4
  %147 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %148 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %151 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %153 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 4
  %154 = load i8**, i8*** %11, align 8
  %155 = load %struct.scratch*, %struct.scratch** %10, align 8
  %156 = getelementptr inbounds %struct.scratch, %struct.scratch* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = ptrtoint i8** %154 to i64
  %159 = ptrtoint i8** %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %164 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %166 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  %167 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %168 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %169 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %168, i32 0, i32 3
  %170 = call i32 @spi_message_add_tail(%struct.spi_transfer* %167, %struct.TYPE_8__* %169)
  %171 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %172 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %121
  %176 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %177 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %180 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %183 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %186 = call i32 @dma_sync_single_for_device(i64 %181, i32 %184, i32 8, i32 %185)
  br label %187

187:                                              ; preds = %175, %121
  %188 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %189 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %188, i32 0, i32 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %192 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %191, i32 0, i32 3
  %193 = call i32 @spi_sync(%struct.TYPE_7__* %190, %struct.TYPE_8__* %192)
  store i32 %193, i32* %13, align 4
  %194 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %195 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %187
  %199 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %200 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %203 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %206 = call i32 @dma_sync_single_for_cpu(i64 %201, i32 %204, i32 8, i32 %205)
  br label %207

207:                                              ; preds = %198, %187
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %207
  %211 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %212 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %211, i32 0, i32 0
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32, i32* %13, align 4
  %216 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %219 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %13, align 4
  store i32 %220, i32* %5, align 4
  br label %226

221:                                              ; preds = %207
  %222 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %6, align 8
  %223 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @mmc_spi_response_get(%struct.mmc_spi_host* %222, %struct.mmc_command* %223, i32 %224)
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %221, %210
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @crc7(i32, i8**, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @maptype(%struct.mmc_command*) #1

declare dso_local i32 @spi_message_init(%struct.TYPE_8__*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.TYPE_8__*) #1

declare dso_local i32 @dma_sync_single_for_device(i64, i32, i32, i32) #1

declare dso_local i32 @spi_sync(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i64, i32, i32, i32) #1

declare dso_local i32 @mmc_spi_response_get(%struct.mmc_spi_host*, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
