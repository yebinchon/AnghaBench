; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_dma_enc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_dma_enc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.ivtv* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ivtv = type { i64, i64, i32, i64, %struct.ivtv_stream* }

@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"start %s for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@IVTV_F_S_DMA_HAS_VBI = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"include DMA for %s\0A\00", align 1
@IVTV_F_I_WORK_HANDLER_PIO = common dso_local global i32 0, align 4
@IVTV_F_I_HAVE_WORK = common dso_local global i32 0, align 4
@IVTV_F_I_PIO = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv_stream*)* @ivtv_dma_enc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_dma_enc_start(%struct.ivtv_stream* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.ivtv_stream*, align 8
  %5 = alloca i32, align 4
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %2, align 8
  %6 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %7 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %6, i32 0, i32 18
  %8 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  store %struct.ivtv* %8, %struct.ivtv** %3, align 8
  %9 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 4
  %11 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %12 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %13 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %11, i64 %12
  store %struct.ivtv_stream* %13, %struct.ivtv_stream** %4, align 8
  %14 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %15 = call i64 @ivtv_use_dma(%struct.ivtv_stream* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %20 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_HI_DMA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21)
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 16
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %31 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %30, i32 0, i32 16
  %32 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %33 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %32, i32 0, i32 17
  %34 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %35 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %34, i32 0, i32 16
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ivtv_queue_move(%struct.ivtv_stream* %29, %struct.TYPE_4__* %31, i32* null, i32* %33, i64 %37)
  br label %39

39:                                               ; preds = %28, %1
  %40 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %41 = call i64 @ivtv_use_dma(%struct.ivtv_stream* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %45 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %44, i32 0, i32 11
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %48 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 256
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %43, %39
  %56 = load i32, i32* @IVTV_F_S_DMA_HAS_VBI, align 4
  %57 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %58 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %57, i32 0, i32 15
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %61 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %158

65:                                               ; preds = %55
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %158

70:                                               ; preds = %65
  %71 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %72 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %75 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %73, %76
  %78 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %79 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ule i64 %77, %80
  br i1 %81, label %82, label %158

82:                                               ; preds = %70
  %83 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %84 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %85 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %84, i32 0, i32 16
  %86 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %87 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %86, i32 0, i32 17
  %88 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %89 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %88, i32 0, i32 16
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ivtv_queue_move(%struct.ivtv_stream* %83, %struct.TYPE_4__* %85, i32* null, i32* %87, i64 %91)
  %93 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %94 = call i64 @ivtv_use_dma(%struct.ivtv_stream* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %82
  %97 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %98 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %97, i32 0, i32 11
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %101 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 256
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %96, %82
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %133, %108
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %113 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %109
  %117 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %118 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %117, i32 0, i32 11
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %121 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %122
  %125 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %126 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %125, i32 0, i32 11
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = bitcast %struct.TYPE_3__* %124 to i8*
  %132 = bitcast %struct.TYPE_3__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 4, i1 false)
  br label %133

133:                                              ; preds = %116
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %109

136:                                              ; preds = %109
  %137 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %138 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %141 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %140, i32 0, i32 9
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %143 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %145 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* @IVTV_F_S_DMA_HAS_VBI, align 4
  %149 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %150 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %149, i32 0, i32 15
  %151 = call i32 @set_bit(i32 %148, i32* %150)
  %152 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %153 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %152, i32 0, i32 14
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_HI_DMA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %136, %70, %65, %55
  %159 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %160 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %159, i32 0, i32 13
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %164 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %163, i32 0, i32 12
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %167 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %166, i32 0, i32 11
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %170 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = mul i64 4, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memcpy(i32 %165, %struct.TYPE_3__* %168, i32 %173)
  %175 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %176 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %180 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %182 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  %183 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %184 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %183, i32 0, i32 10
  store i64 0, i64* %184, align 8
  %185 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %186 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %189 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 8
  %190 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %191 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %194 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 8
  %195 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %196 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %199 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %201 = call i64 @ivtv_use_pio(%struct.ivtv_stream* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %158
  %204 = load i32, i32* @IVTV_F_I_WORK_HANDLER_PIO, align 4
  %205 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %206 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %205, i32 0, i32 2
  %207 = call i32 @set_bit(i32 %204, i32* %206)
  %208 = load i32, i32* @IVTV_F_I_HAVE_WORK, align 4
  %209 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %210 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %209, i32 0, i32 2
  %211 = call i32 @set_bit(i32 %208, i32* %210)
  %212 = load i32, i32* @IVTV_F_I_PIO, align 4
  %213 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %214 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %213, i32 0, i32 2
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  %216 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %217 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %220 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  br label %235

221:                                              ; preds = %158
  %222 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %223 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %222, i32 0, i32 3
  store i64 0, i64* %223, align 8
  %224 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %225 = call i32 @ivtv_dma_enc_start_xfer(%struct.ivtv_stream* %224)
  %226 = load i32, i32* @IVTV_F_I_DMA, align 4
  %227 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %228 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %227, i32 0, i32 2
  %229 = call i32 @set_bit(i32 %226, i32* %228)
  %230 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %231 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %234 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %233, i32 0, i32 1
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %221, %203
  ret void
}

declare dso_local i32 @IVTV_DEBUG_HI_DMA(i8*, i8*, ...) #1

declare dso_local i64 @ivtv_use_dma(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_queue_move(%struct.ivtv_stream*, %struct.TYPE_4__*, i32*, i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @ivtv_use_pio(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_dma_enc_start_xfer(%struct.ivtv_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
