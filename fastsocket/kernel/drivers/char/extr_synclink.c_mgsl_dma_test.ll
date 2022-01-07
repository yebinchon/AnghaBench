; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_dma_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_dma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i16, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i64 }

@default_params = common dso_local global i32 0, align 4
@RDMR = common dso_local global i32 0, align 4
@RTCmd_PurgeRxFifo = common dso_local global i32 0, align 4
@NRARL = common dso_local global i32 0, align 4
@NRARU = common dso_local global i32 0, align 4
@DmaCmd_InitRxChannel = common dso_local global i32 0, align 4
@RMR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BIT4 = common dso_local global i16 0, align 2
@BIT5 = common dso_local global i16 0, align 2
@TCLR = common dso_local global i32 0, align 4
@RTCmd_PurgeTxFifo = common dso_local global i32 0, align 4
@NTARL = common dso_local global i32 0, align 4
@NTARU = common dso_local global i32 0, align 4
@TCSR = common dso_local global i32 0, align 4
@DmaCmd_InitTxChannel = common dso_local global i32 0, align 4
@TCmd_SelectTicrTxFifostatus = common dso_local global i32 0, align 4
@TICR = common dso_local global i32 0, align 4
@TCmd_SendFrame = common dso_local global i32 0, align 4
@TMR = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i16 0, align 2
@BIT2 = common dso_local global i16 0, align 2
@BIT1 = common dso_local global i16 0, align 2
@BIT8 = common dso_local global i16 0, align 2
@BIT3 = common dso_local global i16 0, align 2
@TESTFRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgsl_struct*)* @mgsl_dma_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgsl_dma_test(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  store i32 1, i32* %8, align 4
  store i16 0, i16* %9, align 2
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %13, i32 0, i32 0
  %15 = call i32 @memcpy(i32* %12, i32* %14, i32 4)
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %17 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %16, i32 0, i32 0
  %18 = call i32 @memcpy(i32* %17, i32* @default_params, i32 4)
  %19 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %20 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %24 = call i32 @usc_reset(%struct.mgsl_struct* %23)
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = call i32 @usc_set_sdlc_mode(%struct.mgsl_struct* %25)
  %27 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %28 = call i32 @usc_enable_loopback(%struct.mgsl_struct* %27, i32 1)
  %29 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %30 = load i32, i32* @RDMR, align 4
  %31 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %29, i32 %30, i16 zeroext -7680)
  %32 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %33 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %32, i32 0, i32 1
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 40, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %38 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %44 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 4
  %48 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %49 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 16384, i32* %52, align 8
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %68, %1
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  store i8 %65, i8* %66, align 1
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %59

71:                                               ; preds = %59
  %72 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %73 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i16 0, i16* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 4
  %79 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %80 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  %84 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %85 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %90, 4
  %92 = call i32 @memset(i32 %89, i32 0, i32 %91)
  %93 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %94 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %99 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %104 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %103, i32 0, i32 1
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %108 = load i32, i32* @RTCmd_PurgeRxFifo, align 4
  %109 = call i32 @usc_RTCmd(%struct.mgsl_struct* %107, i32 %108)
  %110 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %111 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %4, align 8
  %116 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %117 = load i32, i32* @NRARL, align 4
  %118 = load i64, i64* %4, align 8
  %119 = trunc i64 %118 to i16
  %120 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %116, i32 %117, i16 zeroext %119)
  %121 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %122 = load i32, i32* @NRARU, align 4
  %123 = load i64, i64* %4, align 8
  %124 = lshr i64 %123, 16
  %125 = trunc i64 %124 to i16
  %126 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %121, i32 %122, i16 zeroext %125)
  %127 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %128 = load i32, i32* @RDMR, align 4
  %129 = call zeroext i16 @usc_InDmaReg(%struct.mgsl_struct* %127, i32 %128)
  %130 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %131 = load i32, i32* @DmaCmd_InitRxChannel, align 4
  %132 = call i32 @usc_DmaCmd(%struct.mgsl_struct* %130, i32 %131)
  %133 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %134 = load i32, i32* @RMR, align 4
  %135 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %136 = load i32, i32* @RMR, align 4
  %137 = call i32 @usc_InReg(%struct.mgsl_struct* %135, i32 %136)
  %138 = and i32 %137, 65532
  %139 = or i32 %138, 2
  %140 = trunc i32 %139 to i16
  %141 = call i32 @usc_OutReg(%struct.mgsl_struct* %133, i32 %134, i16 zeroext %140)
  %142 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %143 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %142, i32 0, i32 1
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load i64, i64* @jiffies, align 8
  %147 = call i64 @msecs_to_jiffies(i32 100)
  %148 = add i64 %146, %147
  store i64 %148, i64* %10, align 8
  br label %149

149:                                              ; preds = %181, %71
  %150 = load i64, i64* @jiffies, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i64 @time_after(i64 %150, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, i32* %8, align 4
  br label %182

155:                                              ; preds = %149
  %156 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %157 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %156, i32 0, i32 1
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @spin_lock_irqsave(i32* %157, i64 %158)
  %160 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %161 = load i32, i32* @RDMR, align 4
  %162 = call zeroext i16 @usc_InDmaReg(%struct.mgsl_struct* %160, i32 %161)
  store i16 %162, i16* %9, align 2
  %163 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %164 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %163, i32 0, i32 1
  %165 = load i64, i64* %11, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  %167 = load i16, i16* %9, align 2
  %168 = zext i16 %167 to i32
  %169 = load i16, i16* @BIT4, align 2
  %170 = zext i16 %169 to i32
  %171 = and i32 %168, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %155
  %174 = load i16, i16* %9, align 2
  %175 = zext i16 %174 to i32
  %176 = load i16, i16* @BIT5, align 2
  %177 = zext i16 %176 to i32
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %182

181:                                              ; preds = %173, %155
  br label %149

182:                                              ; preds = %180, %154
  %183 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %184 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %183, i32 0, i32 1
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @spin_lock_irqsave(i32* %184, i64 %185)
  %187 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %188 = load i32, i32* @TCLR, align 4
  %189 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %190 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %189, i32 0, i32 3
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = trunc i32 %194 to i16
  %196 = call i32 @usc_OutReg(%struct.mgsl_struct* %187, i32 %188, i16 zeroext %195)
  %197 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %198 = load i32, i32* @RTCmd_PurgeTxFifo, align 4
  %199 = call i32 @usc_RTCmd(%struct.mgsl_struct* %197, i32 %198)
  %200 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %201 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %200, i32 0, i32 3
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %4, align 8
  %206 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %207 = load i32, i32* @NTARL, align 4
  %208 = load i64, i64* %4, align 8
  %209 = trunc i64 %208 to i16
  %210 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %206, i32 %207, i16 zeroext %209)
  %211 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %212 = load i32, i32* @NTARU, align 4
  %213 = load i64, i64* %4, align 8
  %214 = lshr i64 %213, 16
  %215 = trunc i64 %214 to i16
  %216 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %211, i32 %212, i16 zeroext %215)
  %217 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %218 = load i32, i32* @TCSR, align 4
  %219 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %220 = load i32, i32* @TCSR, align 4
  %221 = call i32 @usc_InReg(%struct.mgsl_struct* %219, i32 %220)
  %222 = and i32 %221, 3840
  %223 = or i32 %222, 250
  %224 = trunc i32 %223 to i16
  %225 = call i32 @usc_OutReg(%struct.mgsl_struct* %217, i32 %218, i16 zeroext %224)
  %226 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %227 = load i32, i32* @DmaCmd_InitTxChannel, align 4
  %228 = call i32 @usc_DmaCmd(%struct.mgsl_struct* %226, i32 %227)
  %229 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %230 = load i32, i32* @TCmd_SelectTicrTxFifostatus, align 4
  %231 = call i32 @usc_TCmd(%struct.mgsl_struct* %229, i32 %230)
  %232 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %233 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %232, i32 0, i32 1
  %234 = load i64, i64* %11, align 8
  %235 = call i32 @spin_unlock_irqrestore(i32* %233, i64 %234)
  %236 = load i64, i64* @jiffies, align 8
  %237 = call i64 @msecs_to_jiffies(i32 100)
  %238 = add i64 %236, %237
  store i64 %238, i64* %10, align 8
  br label %239

239:                                              ; preds = %275, %182
  %240 = load i64, i64* @jiffies, align 8
  %241 = load i64, i64* %10, align 8
  %242 = call i64 @time_after(i64 %240, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 0, i32* %8, align 4
  br label %276

245:                                              ; preds = %239
  %246 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %247 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %246, i32 0, i32 1
  %248 = load i64, i64* %11, align 8
  %249 = call i32 @spin_lock_irqsave(i32* %247, i64 %248)
  %250 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %251 = load i32, i32* @TICR, align 4
  %252 = call i32 @usc_InReg(%struct.mgsl_struct* %250, i32 %251)
  %253 = ashr i32 %252, 8
  %254 = trunc i32 %253 to i16
  store i16 %254, i16* %3, align 2
  %255 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %256 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %255, i32 0, i32 1
  %257 = load i64, i64* %11, align 8
  %258 = call i32 @spin_unlock_irqrestore(i32* %256, i64 %257)
  %259 = load i16, i16* %3, align 2
  %260 = zext i16 %259 to i32
  %261 = icmp slt i32 %260, 16
  br i1 %261, label %262, label %263

262:                                              ; preds = %245
  br label %276

263:                                              ; preds = %245
  %264 = load i32, i32* %5, align 4
  %265 = icmp ult i32 %264, 32
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = load i16, i16* %3, align 2
  %268 = zext i16 %267 to i32
  %269 = load i32, i32* %5, align 4
  %270 = sub i32 32, %269
  %271 = icmp ule i32 %268, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  br label %276

273:                                              ; preds = %266
  br label %274

274:                                              ; preds = %273, %263
  br label %275

275:                                              ; preds = %274
  br label %239

276:                                              ; preds = %272, %262, %244
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %355

279:                                              ; preds = %276
  %280 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %281 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %280, i32 0, i32 1
  %282 = load i64, i64* %11, align 8
  %283 = call i32 @spin_lock_irqsave(i32* %281, i64 %282)
  %284 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %285 = load i32, i32* @TCmd_SendFrame, align 4
  %286 = call i32 @usc_TCmd(%struct.mgsl_struct* %284, i32 %285)
  %287 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %288 = load i32, i32* @TMR, align 4
  %289 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %290 = load i32, i32* @TMR, align 4
  %291 = call i32 @usc_InReg(%struct.mgsl_struct* %289, i32 %290)
  %292 = and i32 %291, 65532
  %293 = or i32 %292, 2
  %294 = trunc i32 %293 to i16
  %295 = call i32 @usc_OutReg(%struct.mgsl_struct* %287, i32 %288, i16 zeroext %294)
  %296 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %297 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %296, i32 0, i32 1
  %298 = load i64, i64* %11, align 8
  %299 = call i32 @spin_unlock_irqrestore(i32* %297, i64 %298)
  %300 = load i64, i64* @jiffies, align 8
  %301 = call i64 @msecs_to_jiffies(i32 100)
  %302 = add i64 %300, %301
  store i64 %302, i64* %10, align 8
  %303 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %304 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %303, i32 0, i32 1
  %305 = load i64, i64* %11, align 8
  %306 = call i32 @spin_lock_irqsave(i32* %304, i64 %305)
  %307 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %308 = load i32, i32* @TCSR, align 4
  %309 = call i32 @usc_InReg(%struct.mgsl_struct* %307, i32 %308)
  %310 = trunc i32 %309 to i16
  store i16 %310, i16* %9, align 2
  %311 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %312 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %311, i32 0, i32 1
  %313 = load i64, i64* %11, align 8
  %314 = call i32 @spin_unlock_irqrestore(i32* %312, i64 %313)
  br label %315

315:                                              ; preds = %341, %279
  %316 = load i16, i16* %9, align 2
  %317 = zext i16 %316 to i32
  %318 = load i16, i16* @BIT6, align 2
  %319 = zext i16 %318 to i32
  %320 = load i16, i16* @BIT5, align 2
  %321 = zext i16 %320 to i32
  %322 = add nsw i32 %319, %321
  %323 = load i16, i16* @BIT4, align 2
  %324 = zext i16 %323 to i32
  %325 = add nsw i32 %322, %324
  %326 = load i16, i16* @BIT2, align 2
  %327 = zext i16 %326 to i32
  %328 = add nsw i32 %325, %327
  %329 = load i16, i16* @BIT1, align 2
  %330 = zext i16 %329 to i32
  %331 = add nsw i32 %328, %330
  %332 = and i32 %317, %331
  %333 = icmp ne i32 %332, 0
  %334 = xor i1 %333, true
  br i1 %334, label %335, label %354

335:                                              ; preds = %315
  %336 = load i64, i64* @jiffies, align 8
  %337 = load i64, i64* %10, align 8
  %338 = call i64 @time_after(i64 %336, i64 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  store i32 0, i32* %8, align 4
  br label %354

341:                                              ; preds = %335
  %342 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %343 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %342, i32 0, i32 1
  %344 = load i64, i64* %11, align 8
  %345 = call i32 @spin_lock_irqsave(i32* %343, i64 %344)
  %346 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %347 = load i32, i32* @TCSR, align 4
  %348 = call i32 @usc_InReg(%struct.mgsl_struct* %346, i32 %347)
  %349 = trunc i32 %348 to i16
  store i16 %349, i16* %9, align 2
  %350 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %351 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %350, i32 0, i32 1
  %352 = load i64, i64* %11, align 8
  %353 = call i32 @spin_unlock_irqrestore(i32* %351, i64 %352)
  br label %315

354:                                              ; preds = %340, %315
  br label %355

355:                                              ; preds = %354, %276
  %356 = load i32, i32* %8, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %370

358:                                              ; preds = %355
  %359 = load i16, i16* %9, align 2
  %360 = zext i16 %359 to i32
  %361 = load i16, i16* @BIT5, align 2
  %362 = zext i16 %361 to i32
  %363 = load i16, i16* @BIT1, align 2
  %364 = zext i16 %363 to i32
  %365 = add nsw i32 %362, %364
  %366 = and i32 %360, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %358
  store i32 0, i32* %8, align 4
  br label %369

369:                                              ; preds = %368, %358
  br label %370

370:                                              ; preds = %369, %355
  %371 = load i32, i32* %8, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %401

373:                                              ; preds = %370
  %374 = load i64, i64* @jiffies, align 8
  %375 = call i64 @msecs_to_jiffies(i32 100)
  %376 = add i64 %374, %375
  store i64 %376, i64* %10, align 8
  %377 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %378 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %377, i32 0, i32 2
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i64 0
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 0
  %382 = load i16, i16* %381, align 8
  store i16 %382, i16* %9, align 2
  br label %383

383:                                              ; preds = %393, %373
  %384 = load i16, i16* %9, align 2
  %385 = zext i16 %384 to i32
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %400

387:                                              ; preds = %383
  %388 = load i64, i64* @jiffies, align 8
  %389 = load i64, i64* %10, align 8
  %390 = call i64 @time_after(i64 %388, i64 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %387
  store i32 0, i32* %8, align 4
  br label %400

393:                                              ; preds = %387
  %394 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %395 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %394, i32 0, i32 2
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i64 0
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 0
  %399 = load i16, i16* %398, align 8
  store i16 %399, i16* %9, align 2
  br label %383

400:                                              ; preds = %392, %383
  br label %401

401:                                              ; preds = %400, %370
  %402 = load i32, i32* %8, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %443

404:                                              ; preds = %401
  %405 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %406 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %405, i32 0, i32 2
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 0
  %410 = load i16, i16* %409, align 8
  store i16 %410, i16* %9, align 2
  %411 = load i16, i16* %9, align 2
  %412 = zext i16 %411 to i32
  %413 = load i16, i16* @BIT8, align 2
  %414 = zext i16 %413 to i32
  %415 = load i16, i16* @BIT3, align 2
  %416 = zext i16 %415 to i32
  %417 = add nsw i32 %414, %416
  %418 = load i16, i16* @BIT1, align 2
  %419 = zext i16 %418 to i32
  %420 = add nsw i32 %417, %419
  %421 = and i32 %412, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %404
  store i32 0, i32* %8, align 4
  br label %442

424:                                              ; preds = %404
  %425 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %426 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %425, i32 0, i32 3
  %427 = load %struct.TYPE_4__*, %struct.TYPE_4__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i64 0
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 3
  %430 = load i8*, i8** %429, align 8
  %431 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %432 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %431, i32 0, i32 2
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i64 0
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* %5, align 4
  %438 = call i64 @memcmp(i8* %430, i32 %436, i32 %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %424
  store i32 0, i32* %8, align 4
  br label %441

441:                                              ; preds = %440, %424
  br label %442

442:                                              ; preds = %441, %423
  br label %443

443:                                              ; preds = %442, %401
  %444 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %445 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %444, i32 0, i32 1
  %446 = load i64, i64* %11, align 8
  %447 = call i32 @spin_lock_irqsave(i32* %445, i64 %446)
  %448 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %449 = call i32 @usc_reset(%struct.mgsl_struct* %448)
  %450 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %451 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %450, i32 0, i32 1
  %452 = load i64, i64* %11, align 8
  %453 = call i32 @spin_unlock_irqrestore(i32* %451, i64 %452)
  %454 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %455 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %454, i32 0, i32 0
  %456 = call i32 @memcpy(i32* %455, i32* %12, i32 4)
  %457 = load i32, i32* %8, align 4
  ret i32 %457
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usc_reset(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_set_sdlc_mode(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_enable_loopback(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutDmaReg(%struct.mgsl_struct*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usc_RTCmd(%struct.mgsl_struct*, i32) #1

declare dso_local zeroext i16 @usc_InDmaReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_DmaCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i16 zeroext) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usc_TCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
