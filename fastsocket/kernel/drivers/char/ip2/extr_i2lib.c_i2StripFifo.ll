; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StripFifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StripFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i16, i8*, i32, i32, i32, i32, %struct.TYPE_17__, i32, i8*, i8*, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64 }

@IBUF_SIZE = common dso_local global i32 0, align 4
@junkBuffer = common dso_local global i8* null, align 8
@ID_HOT_KEY = common dso_local global i32 0, align 4
@PTYPE_BYPASS = common dso_local global i32 0, align 4
@CMD_HOTACK = common dso_local global i32 0, align 4
@ITRC_NO_PORT = common dso_local global i32 0, align 4
@ITRC_SFIFO = common dso_local global i32 0, align 4
@cmdBuffer = common dso_local global i8* null, align 8
@I2_CTS = common dso_local global i32 0, align 4
@I2_DCTS = common dso_local global i32 0, align 4
@ITRC_MODEM = common dso_local global i32 0, align 4
@I2_DCD = common dso_local global i32 0, align 4
@CHANN = common dso_local global i32 0, align 4
@I2_DDCD = common dso_local global i32 0, align 4
@I2_DSR = common dso_local global i32 0, align 4
@I2_DDSR = common dso_local global i32 0, align 4
@I2_RI = common dso_local global i32 0, align 4
@I2_DRI = common dso_local global i32 0, align 4
@I2_BRK = common dso_local global i32 0, align 4
@ITRC_DRAIN = common dso_local global i32 0, align 4
@ITRC_STFLW = common dso_local global i32 0, align 4
@NEED_CREDIT = common dso_local global i32 0, align 4
@NEED_INLINE = common dso_local global i32 0, align 4
@PTYPE_INLINE = common dso_local global i32 0, align 4
@CMD_HW_TEST = common dso_local global i32 0, align 4
@STAT_MOD_ERROR = common dso_local global i8 0, align 1
@STAT_E_PARITY = common dso_local global i8 0, align 1
@I2_PAR = common dso_local global i32 0, align 4
@STAT_E_FRAMING = common dso_local global i8 0, align 1
@I2_FRA = common dso_local global i32 0, align 4
@STAT_E_OVERRUN = common dso_local global i8 0, align 1
@I2_OVR = common dso_local global i32 0, align 4
@xlatDss = common dso_local global i32* null, align 8
@ITRC_RETURN = common dso_local global i32 0, align 4
@MB_IN_STRIPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @i2StripFifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2StripFifo(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  br label %14

14:                                               ; preds = %740, %1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = call i64 @I2_HAS_INPUT(%struct.TYPE_18__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %741

18:                                               ; preds = %14
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 5
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @write_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = call i32 @iiReadWord(%struct.TYPE_18__* %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @PTYPE_OF(i32* %31)
  switch i32 %32, label %728 [
    i32 147, label %33
    i32 146, label %207
  ]

33:                                               ; preds = %18
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @CHANNEL_OF(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %41 = call i32 @iiReadWord(%struct.TYPE_18__* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IBUF_SIZE, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  store i32 2, i32* %47, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @write_unlock_irqrestore(i32* %49, i64 %50)
  br label %751

52:                                               ; preds = %33
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_19__**
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %62, i64 %64
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %3, align 8
  %67 = icmp eq %struct.TYPE_19__* null, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %58, %52
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %70 = load i8*, i8** @junkBuffer, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @iiReadBuf(%struct.TYPE_18__* %69, i8* %70, i32 %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 5
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @write_unlock_irqrestore(i32* %74, i64 %75)
  br label %740

77:                                               ; preds = %58
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @ID_OF(i32* %80)
  %82 = load i32, i32* @ID_HOT_KEY, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %86 = call i32 @iiReadWord(%struct.TYPE_18__* %85)
  %87 = and i32 %86, 255
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 5
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @write_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* @PTYPE_BYPASS, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = load i32, i32* @CMD_HOTACK, align 4
  %97 = call i32 @i2QueueCommands(i32 %94, %struct.TYPE_19__* %95, i32 0, i32 1, i32 %96)
  br label %740

98:                                               ; preds = %77
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 18
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @write_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i16, i16* %104, align 4
  store i16 %105, i16* %6, align 2
  %106 = load i32, i32* @IBUF_SIZE, align 4
  %107 = load i16, i16* %6, align 2
  %108 = zext i16 %107 to i32
  %109 = sub i32 %106, %108
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %98
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load i16, i16* %6, align 2
  %121 = zext i16 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @iiReadBuf(%struct.TYPE_18__* %116, i8* %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, %125
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i16, i16* %6, align 2
  %133 = zext i16 %132 to i32
  %134 = add nsw i32 %133, %131
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %6, align 2
  %136 = load i16, i16* %6, align 2
  %137 = zext i16 %136 to i32
  %138 = load i32, i32* @IBUF_SIZE, align 4
  %139 = icmp uge i32 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %115
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, 1
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %144
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @IBUF_SIZE, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  store i8 %155, i8* %159, align 1
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  store i16 1, i16* %6, align 2
  br label %163

162:                                              ; preds = %144, %140
  store i16 0, i16* %6, align 2
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %115
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %192

168:                                              ; preds = %164
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %7, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %7, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = load i16, i16* %6, align 2
  %177 = zext i16 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @iiReadBuf(%struct.TYPE_18__* %172, i8* %178, i32 %179)
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, %181
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load i16, i16* %6, align 2
  %189 = zext i16 %188 to i32
  %190 = add nsw i32 %189, %187
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %6, align 2
  br label %192

192:                                              ; preds = %168, %164
  %193 = load i16, i16* %6, align 2
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  store i16 %193, i16* %195, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 18
  %198 = load i64, i64* %13, align 8
  %199 = call i32 @write_unlock_irqrestore(i32* %197, i64 %198)
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 5
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @write_unlock_irqrestore(i32* %201, i64 %202)
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 17
  %206 = call i32 @do_input(i32* %205)
  br label %740

207:                                              ; preds = %18
  %208 = load i32, i32* @ITRC_NO_PORT, align 4
  %209 = load i32, i32* @ITRC_SFIFO, align 4
  %210 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %208, i32 %209, i32 4, i32 0)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @CMD_COUNT_OF(i32* %213)
  store i32 %214, i32* %5, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %216 = load i8*, i8** @cmdBuffer, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @iiReadBuf(%struct.TYPE_18__* %215, i8* %216, i32 %217)
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 5
  %221 = load i64, i64* %12, align 8
  %222 = call i32 @write_unlock_irqrestore(i32* %220, i64 %221)
  %223 = load i8*, i8** @cmdBuffer, align 8
  store i8* %223, i8** %8, align 8
  %224 = load i8*, i8** @cmdBuffer, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  store i8* %227, i8** %9, align 8
  br label %228

228:                                              ; preds = %726, %207
  %229 = load i8*, i8** %8, align 8
  %230 = load i8*, i8** %9, align 8
  %231 = icmp ult i8* %229, %230
  br i1 %231, label %232, label %727

232:                                              ; preds = %228
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %8, align 8
  %235 = load i8, i8* %233, align 1
  %236 = zext i8 %235 to i32
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @ITRC_SFIFO, align 4
  %239 = load i32, i32* %4, align 4
  %240 = load i8*, i8** %8, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %237, i32 %238, i32 7, i32 2, i32 %239, i32 %242)
  %244 = load i32, i32* %4, align 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %716

249:                                              ; preds = %232
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 7
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to %struct.TYPE_19__**
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %253, i64 %255
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %256, align 8
  store %struct.TYPE_19__* %257, %struct.TYPE_19__** %3, align 8
  %258 = icmp ne %struct.TYPE_19__* %257, null
  br i1 %258, label %259, label %716

259:                                              ; preds = %249
  store i8 0, i8* %11, align 1
  %260 = load i8*, i8** %8, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %8, align 8
  %262 = load i8, i8* %260, align 1
  store i8 %262, i8* %10, align 1
  %263 = zext i8 %262 to i32
  switch i32 %263, label %619 [
    i32 141, label %264
    i32 142, label %288
    i32 139, label %313
    i32 140, label %352
    i32 137, label %392
    i32 138, label %416
    i32 131, label %441
    i32 132, label %465
    i32 143, label %472
    i32 145, label %483
    i32 135, label %506
    i32 129, label %573
    i32 128, label %581
    i32 130, label %589
    i32 144, label %597
    i32 134, label %607
  ]

264:                                              ; preds = %259
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @I2_CTS, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %282, label %271

271:                                              ; preds = %264
  %272 = load i32, i32* @I2_DCTS, align 4
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  store i8 1, i8* %11, align 1
  br label %282

282:                                              ; preds = %271, %264
  %283 = load i32, i32* @I2_CTS, align 4
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  br label %708

288:                                              ; preds = %259
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @I2_CTS, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %288
  %296 = load i32, i32* @I2_DCTS, align 4
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 7
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 8
  store i8 1, i8* %11, align 1
  br label %306

306:                                              ; preds = %295, %288
  %307 = load i32, i32* @I2_CTS, align 4
  %308 = xor i32 %307, -1
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %708

313:                                              ; preds = %259
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* @ITRC_MODEM, align 4
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %314, i32 %315, i32 1, i32 1, i32 %318)
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @I2_DCD, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %340, label %326

326:                                              ; preds = %313
  %327 = load i32, i32* @CHANN, align 4
  %328 = load i32, i32* @ITRC_MODEM, align 4
  %329 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %327, i32 %328, i32 2, i32 0)
  %330 = load i32, i32* @I2_DDCD, align 4
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 8
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 7
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 4
  store i8 1, i8* %11, align 1
  br label %340

340:                                              ; preds = %326, %313
  %341 = load i32, i32* @I2_DCD, align 4
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 8
  %346 = load i32, i32* %4, align 4
  %347 = load i32, i32* @ITRC_MODEM, align 4
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %346, i32 %347, i32 3, i32 1, i32 %350)
  br label %708

352:                                              ; preds = %259
  %353 = load i32, i32* %4, align 4
  %354 = load i32, i32* @ITRC_MODEM, align 4
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %353, i32 %354, i32 4, i32 1, i32 %357)
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @I2_DCD, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %379

365:                                              ; preds = %352
  %366 = load i32, i32* %4, align 4
  %367 = load i32, i32* @ITRC_MODEM, align 4
  %368 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %366, i32 %367, i32 5, i32 0)
  %369 = load i32, i32* @I2_DDCD, align 4
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 8
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 7
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 7
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %376, align 4
  store i8 1, i8* %11, align 1
  br label %379

379:                                              ; preds = %365, %352
  %380 = load i32, i32* @I2_DCD, align 4
  %381 = xor i32 %380, -1
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = and i32 %384, %381
  store i32 %385, i32* %383, align 8
  %386 = load i32, i32* %4, align 4
  %387 = load i32, i32* @ITRC_MODEM, align 4
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %386, i32 %387, i32 6, i32 1, i32 %390)
  br label %708

392:                                              ; preds = %259
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @I2_DSR, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %410, label %399

399:                                              ; preds = %392
  %400 = load i32, i32* @I2_DDSR, align 4
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 8
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 7
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 6
  %408 = load i32, i32* %407, align 8
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %407, align 8
  store i8 1, i8* %11, align 1
  br label %410

410:                                              ; preds = %399, %392
  %411 = load i32, i32* @I2_DSR, align 4
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  br label %708

416:                                              ; preds = %259
  %417 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @I2_DSR, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %434

423:                                              ; preds = %416
  %424 = load i32, i32* @I2_DDSR, align 4
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 8
  %428 = or i32 %427, %424
  store i32 %428, i32* %426, align 8
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 7
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 6
  %432 = load i32, i32* %431, align 8
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %431, align 8
  store i8 1, i8* %11, align 1
  br label %434

434:                                              ; preds = %423, %416
  %435 = load i32, i32* @I2_DSR, align 4
  %436 = xor i32 %435, -1
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 8
  %440 = and i32 %439, %436
  store i32 %440, i32* %438, align 8
  br label %708

441:                                              ; preds = %259
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @I2_RI, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %459, label %448

448:                                              ; preds = %441
  %449 = load i32, i32* @I2_DRI, align 4
  %450 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 8
  %453 = or i32 %452, %449
  store i32 %453, i32* %451, align 8
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i32 0, i32 7
  %456 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %455, i32 0, i32 5
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %456, align 4
  store i8 1, i8* %11, align 1
  br label %459

459:                                              ; preds = %448, %441
  %460 = load i32, i32* @I2_RI, align 4
  %461 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = or i32 %463, %460
  store i32 %464, i32* %462, align 8
  br label %708

465:                                              ; preds = %259
  %466 = load i32, i32* @I2_RI, align 4
  %467 = xor i32 %466, -1
  %468 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 8
  %471 = and i32 %470, %467
  store i32 %471, i32* %469, align 8
  br label %708

472:                                              ; preds = %259
  %473 = load i32, i32* @I2_BRK, align 4
  %474 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 8
  %477 = or i32 %476, %473
  store i32 %477, i32* %475, align 8
  %478 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 7
  %480 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %480, align 8
  store i8 1, i8* %11, align 1
  br label %708

483:                                              ; preds = %259
  %484 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %484, i32 0, i32 16
  %486 = load i32, i32* %485, align 8
  %487 = add nsw i32 %486, -1
  store i32 %487, i32* %485, align 8
  %488 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %488, i32 0, i32 16
  %490 = load i32, i32* %489, align 8
  %491 = icmp sle i32 %490, 0
  br i1 %491, label %492, label %505

492:                                              ; preds = %483
  %493 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %494 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %493, i32 0, i32 16
  store i32 0, i32* %494, align 8
  %495 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %495, i32 0, i32 15
  %497 = call i32 @wake_up_interruptible(i32* %496)
  %498 = load i32, i32* %4, align 4
  %499 = load i32, i32* @ITRC_DRAIN, align 4
  %500 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %500, i32 0, i32 14
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %498, i32 %499, i32 20, i32 1, i32 %503)
  br label %505

505:                                              ; preds = %492, %483
  br label %708

506:                                              ; preds = %259
  %507 = load i8*, i8** %8, align 8
  %508 = bitcast i8* %507 to %struct.TYPE_20__*
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %511, i32 0, i32 13
  %513 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %512, i32 0, i32 1
  %514 = load i64, i64* %513, align 8
  %515 = load i8*, i8** %8, align 8
  %516 = bitcast i8* %515 to %struct.TYPE_20__*
  %517 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = sub nsw i64 %514, %518
  %520 = sub nsw i64 %510, %519
  %521 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %521, i32 0, i32 13
  %523 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %522, i32 0, i32 0
  store i64 %520, i64* %523, align 8
  %524 = load i32, i32* %4, align 4
  %525 = load i32, i32* @ITRC_STFLW, align 4
  %526 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %526, i32 0, i32 13
  %528 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %524, i32 %525, i32 1, i32 1, i64 %529)
  %531 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @NEED_CREDIT, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %564

537:                                              ; preds = %506
  %538 = load i32, i32* %4, align 4
  %539 = load i32, i32* @ITRC_STFLW, align 4
  %540 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 4
  %543 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %538, i32 %539, i32 2, i32 1, i32 %542)
  %544 = load i32, i32* @NEED_CREDIT, align 4
  %545 = xor i32 %544, -1
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %547 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i32 0, i32 4
  %548 = load i32, i32* %547, align 4
  %549 = and i32 %548, %545
  store i32 %549, i32* %547, align 4
  %550 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %551 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %552 = load i32, i32* @NEED_INLINE, align 4
  %553 = call i32 @i2QueueNeeds(%struct.TYPE_18__* %550, %struct.TYPE_19__* %551, i32 %552)
  %554 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %555 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %554, i32 0, i32 12
  %556 = load i32, i32* %555, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %537
  %559 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %560 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %559, i32 0, i32 12
  %561 = load i32, i32* %560, align 4
  %562 = call i32 @ip2_owake(i32 %561)
  br label %563

563:                                              ; preds = %558, %537
  br label %564

564:                                              ; preds = %563, %506
  %565 = load i32, i32* %4, align 4
  %566 = load i32, i32* @ITRC_STFLW, align 4
  %567 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %567, i32 0, i32 4
  %569 = load i32, i32* %568, align 4
  %570 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %565, i32 %566, i32 3, i32 1, i32 %569)
  %571 = load i8*, i8** %8, align 8
  %572 = getelementptr inbounds i8, i8* %571, i64 4
  store i8* %572, i8** %8, align 8
  br label %708

573:                                              ; preds = %259
  %574 = load i8*, i8** %8, align 8
  %575 = bitcast i8* %574 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %577, i32 0, i32 11
  store i32 %576, i32* %578, align 8
  %579 = load i8*, i8** %8, align 8
  %580 = getelementptr inbounds i8, i8* %579, i64 4
  store i8* %580, i8** %8, align 8
  br label %708

581:                                              ; preds = %259
  %582 = load i8*, i8** %8, align 8
  %583 = bitcast i8* %582 to i8**
  %584 = load i8*, i8** %583, align 8
  %585 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %586 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %585, i32 0, i32 10
  store i8* %584, i8** %586, align 8
  %587 = load i8*, i8** %8, align 8
  %588 = getelementptr inbounds i8, i8* %587, i64 4
  store i8* %588, i8** %8, align 8
  br label %708

589:                                              ; preds = %259
  %590 = load i8*, i8** %8, align 8
  %591 = bitcast i8* %590 to i8**
  %592 = load i8*, i8** %591, align 8
  %593 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %594 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %593, i32 0, i32 9
  store i8* %592, i8** %594, align 8
  %595 = load i8*, i8** %8, align 8
  %596 = getelementptr inbounds i8, i8* %595, i64 4
  store i8* %596, i8** %8, align 8
  br label %708

597:                                              ; preds = %259
  %598 = load i8*, i8** %8, align 8
  %599 = bitcast i8* %598 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %602 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %601, i32 0, i32 6
  store i32 %600, i32* %602, align 4
  %603 = load i8*, i8** %8, align 8
  %604 = getelementptr inbounds i8, i8* %603, i64 4
  store i8* %604, i8** %8, align 8
  %605 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %606 = call i32 @set_baud_params(%struct.TYPE_18__* %605)
  br label %708

607:                                              ; preds = %259
  %608 = load i32, i32* @PTYPE_INLINE, align 4
  %609 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %610 = load i32, i32* @CMD_HW_TEST, align 4
  %611 = call i32 @i2QueueCommands(i32 %608, %struct.TYPE_19__* %609, i32 0, i32 1, i32 %610)
  %612 = load i8*, i8** %8, align 8
  %613 = bitcast i8* %612 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %616 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %615, i32 0, i32 8
  store i32 %614, i32* %616, align 4
  %617 = load i8*, i8** %8, align 8
  %618 = getelementptr inbounds i8, i8* %617, i64 4
  store i8* %618, i8** %8, align 8
  br label %708

619:                                              ; preds = %259
  %620 = load i8, i8* %10, align 1
  %621 = zext i8 %620 to i32
  %622 = load i8, i8* @STAT_MOD_ERROR, align 1
  %623 = zext i8 %622 to i32
  %624 = and i32 %621, %623
  switch i32 %624, label %706 [
    i32 136, label %625
    i32 133, label %680
  ]

625:                                              ; preds = %619
  %626 = load i8, i8* %10, align 1
  %627 = zext i8 %626 to i32
  %628 = load i8, i8* @STAT_E_PARITY, align 1
  %629 = zext i8 %628 to i32
  %630 = and i32 %627, %629
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %643

632:                                              ; preds = %625
  %633 = load i32, i32* @I2_PAR, align 4
  %634 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %635 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %634, i32 0, i32 3
  %636 = load i32, i32* %635, align 8
  %637 = or i32 %636, %633
  store i32 %637, i32* %635, align 8
  %638 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %639 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %638, i32 0, i32 7
  %640 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %640, align 4
  br label %643

643:                                              ; preds = %632, %625
  %644 = load i8, i8* %10, align 1
  %645 = zext i8 %644 to i32
  %646 = load i8, i8* @STAT_E_FRAMING, align 1
  %647 = zext i8 %646 to i32
  %648 = and i32 %645, %647
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %661

650:                                              ; preds = %643
  %651 = load i32, i32* @I2_FRA, align 4
  %652 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %653 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %652, i32 0, i32 3
  %654 = load i32, i32* %653, align 8
  %655 = or i32 %654, %651
  store i32 %655, i32* %653, align 8
  %656 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %657 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %656, i32 0, i32 7
  %658 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %657, i32 0, i32 2
  %659 = load i32, i32* %658, align 8
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %658, align 8
  br label %661

661:                                              ; preds = %650, %643
  %662 = load i8, i8* %10, align 1
  %663 = zext i8 %662 to i32
  %664 = load i8, i8* @STAT_E_OVERRUN, align 1
  %665 = zext i8 %664 to i32
  %666 = and i32 %663, %665
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %679

668:                                              ; preds = %661
  %669 = load i32, i32* @I2_OVR, align 4
  %670 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %671 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %670, i32 0, i32 3
  %672 = load i32, i32* %671, align 8
  %673 = or i32 %672, %669
  store i32 %673, i32* %671, align 8
  %674 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %675 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %674, i32 0, i32 7
  %676 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %675, i32 0, i32 1
  %677 = load i32, i32* %676, align 4
  %678 = add nsw i32 %677, 1
  store i32 %678, i32* %676, align 4
  br label %679

679:                                              ; preds = %668, %661
  br label %707

680:                                              ; preds = %619
  %681 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %682 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %681, i32 0, i32 3
  %683 = load i32, i32* %682, align 8
  %684 = load i32, i32* @I2_RI, align 4
  %685 = load i32, i32* @I2_CTS, align 4
  %686 = or i32 %684, %685
  %687 = load i32, i32* @I2_DCD, align 4
  %688 = or i32 %686, %687
  %689 = load i32, i32* @I2_DSR, align 4
  %690 = or i32 %688, %689
  %691 = xor i32 %690, -1
  %692 = and i32 %683, %691
  %693 = load i32*, i32** @xlatDss, align 8
  %694 = load i8, i8* %10, align 1
  %695 = zext i8 %694 to i32
  %696 = and i32 %695, 15
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i32, i32* %693, i64 %697
  %699 = load i32, i32* %698, align 4
  %700 = or i32 %692, %699
  %701 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %702 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %701, i32 0, i32 3
  store i32 %700, i32* %702, align 8
  %703 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %704 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %703, i32 0, i32 6
  %705 = call i32 @wake_up_interruptible(i32* %704)
  br label %706

706:                                              ; preds = %619, %680
  br label %707

707:                                              ; preds = %706, %679
  br label %708

708:                                              ; preds = %707, %607, %597, %589, %581, %573, %564, %505, %472, %465, %459, %434, %410, %379, %340, %306, %282
  %709 = load i8, i8* %11, align 1
  %710 = icmp ne i8 %709, 0
  br i1 %710, label %711, label %715

711:                                              ; preds = %708
  %712 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %713 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %712, i32 0, i32 5
  %714 = call i32 @do_status(i32* %713)
  br label %715

715:                                              ; preds = %711, %708
  br label %726

716:                                              ; preds = %249, %232
  %717 = load i8*, i8** %8, align 8
  %718 = getelementptr inbounds i8, i8* %717, i32 1
  store i8* %718, i8** %8, align 8
  %719 = load i8, i8* %717, align 1
  %720 = zext i8 %719 to i32
  switch i32 %720, label %724 [
    i32 135, label %721
  ]

721:                                              ; preds = %716
  %722 = load i8*, i8** %8, align 8
  %723 = getelementptr inbounds i8, i8* %722, i64 4
  store i8* %723, i8** %8, align 8
  br label %725

724:                                              ; preds = %716
  br label %725

725:                                              ; preds = %724, %721
  br label %726

726:                                              ; preds = %725, %715
  br label %228

727:                                              ; preds = %228
  br label %740

728:                                              ; preds = %18
  %729 = load i32, i32* @ITRC_NO_PORT, align 4
  %730 = load i32, i32* @ITRC_SFIFO, align 4
  %731 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %732 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %731, i32 0, i32 0
  %733 = load i32*, i32** %732, align 8
  %734 = call i32 @PTYPE_OF(i32* %733)
  %735 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %729, i32 %730, i32 5, i32 1, i32 %734)
  %736 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %737 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %736, i32 0, i32 5
  %738 = load i64, i64* %12, align 8
  %739 = call i32 @write_unlock_irqrestore(i32* %737, i64 %738)
  br label %740

740:                                              ; preds = %728, %727, %192, %84, %68
  br label %14

741:                                              ; preds = %14
  %742 = load i32, i32* @ITRC_NO_PORT, align 4
  %743 = load i32, i32* @ITRC_SFIFO, align 4
  %744 = load i32, i32* @ITRC_RETURN, align 4
  %745 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %742, i32 %743, i32 %744, i32 0)
  %746 = load i32, i32* @MB_IN_STRIPPED, align 4
  %747 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %748 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %747, i32 0, i32 4
  %749 = load i32, i32* %748, align 4
  %750 = or i32 %749, %746
  store i32 %750, i32* %748, align 4
  br label %751

751:                                              ; preds = %741, %45
  ret void
}

declare dso_local i64 @I2_HAS_INPUT(%struct.TYPE_18__*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iiReadWord(%struct.TYPE_18__*) #1

declare dso_local i32 @PTYPE_OF(i32*) #1

declare dso_local i32 @CHANNEL_OF(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iiReadBuf(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @ID_OF(i32*) #1

declare dso_local i32 @i2QueueCommands(i32, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @do_input(i32*) #1

declare dso_local i32 @ip2trace(i32, i32, i32, i32, ...) #1

declare dso_local i32 @CMD_COUNT_OF(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @i2QueueNeeds(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ip2_owake(i32) #1

declare dso_local i32 @set_baud_params(%struct.TYPE_18__*) #1

declare dso_local i32 @do_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
