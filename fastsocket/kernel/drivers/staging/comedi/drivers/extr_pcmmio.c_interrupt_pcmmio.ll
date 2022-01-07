; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_interrupt_pcmmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_interrupt_pcmmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@MAX_ASICS = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_13__* null, align 8
@REG_INT_PENDING = common dso_local global i64 0, align 8
@INTR_PORTS_PER_ASIC = common dso_local global i32 0, align 4
@PAGE_INT_ID = common dso_local global i32 0, align 4
@REG_INT_ID0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"PCMMIO DEBUG: got edge detect interrupt %d asic %d which_chans: %06x\0A\00", align 1
@subpriv = common dso_local global %struct.TYPE_12__* null, align 8
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcmmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcmmio(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.comedi_subdevice*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.comedi_device*
  store %struct.comedi_device* %24, %struct.comedi_device** %8, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %341, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MAX_ASICS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %344

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %30, %38
  br i1 %39, label %40, label %340

40:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @REG_INT_PENDING, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @inb(i64 %60)
  %62 = and i32 %61, 7
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %12, align 1
  %64 = load i8, i8* %12, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %116

66:                                               ; preds = %40
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %110, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @INTR_PORTS_PER_ASIC, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %67
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* %13, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %71
  store i8 0, i8* %14, align 1
  %79 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @PAGE_INT_ID, align 4
  %82 = call i32 @switch_page(%struct.comedi_device* %79, i32 %80, i32 %81)
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @REG_INT_ID0, align 8
  %85 = add i64 %83, %84
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %85, %87
  %89 = call i32 @inb(i64 %88)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %14, align 1
  %91 = load i8, i8* %14, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %78
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @REG_INT_ID0, align 8
  %96 = add i64 %94, %95
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %96, %98
  %100 = call i32 @outb(i32 0, i64 %99)
  br label %101

101:                                              ; preds = %93, %78
  %102 = load i8, i8* %14, align 1
  %103 = zext i8 %102 to i32
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %104, 8
  %106 = shl i32 %103, %105
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %101, %71
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %67

113:                                              ; preds = %67
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %40
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %339

128:                                              ; preds = %116
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130, i32 %131)
  %133 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 1
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %134, align 8
  %136 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %135, i64 2
  store %struct.comedi_subdevice* %136, %struct.comedi_subdevice** %15, align 8
  br label %137

137:                                              ; preds = %335, %128
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %139 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 1
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %140, align 8
  %142 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %143 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %141, i64 %145
  %147 = icmp ult %struct.comedi_subdevice* %138, %146
  br i1 %147, label %148, label %338

148:                                              ; preds = %137
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %334

156:                                              ; preds = %148
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 6
  %161 = load i64, i64* %16, align 8
  %162 = call i32 @spin_lock_irqsave(i32* %160, i64 %161)
  %163 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %164 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %17, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %315

174:                                              ; preds = %156
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = lshr i32 %175, %180
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 1, %186
  %188 = sub nsw i32 %187, 1
  %189 = and i32 %181, %188
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %189, %194
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %196, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %314

204:                                              ; preds = %174
  store i32 0, i32* %19, align 4
  %205 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %206 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %205, i32 0, i32 0
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %211

211:                                              ; preds = %238, %204
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* %22, align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %241

215:                                              ; preds = %211
  %216 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %217 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %216, i32 0, i32 0
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %20, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @CR_CHAN(i32 %225)
  store i32 %226, i32* %21, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %21, align 4
  %229 = shl i32 1, %228
  %230 = and i32 %227, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %215
  %233 = load i32, i32* %20, align 4
  %234 = shl i32 1, %233
  %235 = load i32, i32* %19, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %19, align 4
  br label %237

237:                                              ; preds = %232, %215
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %20, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %20, align 4
  br label %211

241:                                              ; preds = %211
  %242 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %243 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %242, i32 0, i32 0
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = bitcast i32* %19 to i16*
  %246 = getelementptr inbounds i16, i16* %245, i64 0
  %247 = load i16, i16* %246, align 4
  %248 = call i64 @comedi_buf_put(%struct.TYPE_14__* %244, i16 signext %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %241
  %251 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %252 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %251, i32 0, i32 0
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = bitcast i32* %19 to i16*
  %255 = getelementptr inbounds i16, i16* %254, i64 1
  %256 = load i16, i16* %255, align 2
  %257 = call i64 @comedi_buf_put(%struct.TYPE_14__* %253, i16 signext %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %250
  %260 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %261 = load i32, i32* @COMEDI_CB_EOS, align 4
  %262 = or i32 %260, %261
  %263 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %264 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %263, i32 0, i32 0
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %262
  store i32 %268, i32* %266, align 8
  br label %273

269:                                              ; preds = %250, %241
  %270 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %271 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %272 = call i32 @pcmmio_stop_intr(%struct.comedi_device* %270, %struct.comedi_subdevice* %271)
  br label %273

273:                                              ; preds = %269, %259
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %313, label %280

280:                                              ; preds = %273
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %312

287:                                              ; preds = %280
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %292, -1
  store i64 %293, i64* %291, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %287
  %301 = load i32, i32* @COMEDI_CB_EOA, align 4
  %302 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %303 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %302, i32 0, i32 0
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %301
  store i32 %307, i32* %305, align 8
  %308 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %309 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %310 = call i32 @pcmmio_stop_intr(%struct.comedi_device* %308, %struct.comedi_subdevice* %309)
  br label %311

311:                                              ; preds = %300, %287
  br label %312

312:                                              ; preds = %311, %280
  br label %313

313:                                              ; preds = %312, %273
  br label %314

314:                                              ; preds = %313, %174
  br label %315

315:                                              ; preds = %314, %156
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** @subpriv, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 6
  %320 = load i64, i64* %16, align 8
  %321 = call i32 @spin_unlock_irqrestore(i32* %319, i64 %320)
  %322 = load i32, i32* %17, align 4
  %323 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %324 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %323, i32 0, i32 0
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %322, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %315
  %330 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %331 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %332 = call i32 @comedi_event(%struct.comedi_device* %330, %struct.comedi_subdevice* %331)
  br label %333

333:                                              ; preds = %329, %315
  br label %334

334:                                              ; preds = %333, %148
  br label %335

335:                                              ; preds = %334
  %336 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %337 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %336, i32 1
  store %struct.comedi_subdevice* %337, %struct.comedi_subdevice** %15, align 8
  br label %137

338:                                              ; preds = %137
  br label %339

339:                                              ; preds = %338, %116
  br label %340

340:                                              ; preds = %339, %29
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %6, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %6, align 4
  br label %25

344:                                              ; preds = %25
  %345 = load i32, i32* %7, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = load i32, i32* @IRQ_NONE, align 4
  store i32 %348, i32* %3, align 4
  br label %351

349:                                              ; preds = %344
  %350 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %350, i32* %3, align 4
  br label %351

351:                                              ; preds = %349, %347
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @switch_page(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @comedi_buf_put(%struct.TYPE_14__*, i16 signext) #1

declare dso_local i32 @pcmmio_stop_intr(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
