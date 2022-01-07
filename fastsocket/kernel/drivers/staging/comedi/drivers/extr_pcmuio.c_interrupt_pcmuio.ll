; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_interrupt_pcmuio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_interrupt_pcmuio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }

@MAX_ASICS = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_11__* null, align 8
@REG_INT_PENDING = common dso_local global i64 0, align 8
@INTR_PORTS_PER_ASIC = common dso_local global i32 0, align 4
@PAGE_INT_ID = common dso_local global i32 0, align 4
@REG_INT_ID0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"PCMUIO DEBUG: got edge detect interrupt %d asic %d which_chans: %06x\0A\00", align 1
@subpriv = common dso_local global %struct.TYPE_10__* null, align 8
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcmuio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcmuio(i32 %0, i8* %1) #0 {
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

25:                                               ; preds = %328, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MAX_ASICS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %331

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %30, %38
  br i1 %39, label %40, label %327

40:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
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
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %326

128:                                              ; preds = %116
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130, i32 %131)
  %133 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 1
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %134, align 8
  store %struct.comedi_subdevice* %135, %struct.comedi_subdevice** %15, align 8
  br label %136

136:                                              ; preds = %322, %128
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %138 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %139 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %138, i32 0, i32 1
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %139, align 8
  %141 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %140, i64 %144
  %146 = icmp ult %struct.comedi_subdevice* %137, %145
  br i1 %146, label %147, label %325

147:                                              ; preds = %136
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %321

154:                                              ; preds = %147
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 6
  %158 = load i64, i64* %16, align 8
  %159 = call i32 @spin_lock_irqsave(i32* %157, i64 %158)
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %17, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %303

170:                                              ; preds = %154
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = lshr i32 %171, %175
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = shl i32 1, %180
  %182 = sub nsw i32 %181, 1
  %183 = and i32 %176, %182
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %183, %187
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %189, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %302

196:                                              ; preds = %170
  store i32 0, i32* %19, align 4
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %198 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %197, i32 0, i32 0
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %203

203:                                              ; preds = %230, %196
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %22, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %207, label %233

207:                                              ; preds = %203
  %208 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %209 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %208, i32 0, i32 0
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %20, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @CR_CHAN(i32 %217)
  store i32 %218, i32* %21, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %21, align 4
  %221 = shl i32 1, %220
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %207
  %225 = load i32, i32* %20, align 4
  %226 = shl i32 1, %225
  %227 = load i32, i32* %19, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %19, align 4
  br label %229

229:                                              ; preds = %224, %207
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %20, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %20, align 4
  br label %203

233:                                              ; preds = %203
  %234 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %235 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %234, i32 0, i32 0
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = bitcast i32* %19 to i16*
  %238 = getelementptr inbounds i16, i16* %237, i64 0
  %239 = load i16, i16* %238, align 4
  %240 = call i64 @comedi_buf_put(%struct.TYPE_12__* %236, i16 signext %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %233
  %243 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %244 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = bitcast i32* %19 to i16*
  %247 = getelementptr inbounds i16, i16* %246, i64 1
  %248 = load i16, i16* %247, align 2
  %249 = call i64 @comedi_buf_put(%struct.TYPE_12__* %245, i16 signext %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %242
  %252 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %253 = load i32, i32* @COMEDI_CB_EOS, align 4
  %254 = or i32 %252, %253
  %255 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %256 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %255, i32 0, i32 0
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %254
  store i32 %260, i32* %258, align 8
  br label %265

261:                                              ; preds = %242, %233
  %262 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %263 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %264 = call i32 @pcmuio_stop_intr(%struct.comedi_device* %262, %struct.comedi_subdevice* %263)
  br label %265

265:                                              ; preds = %261, %251
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %301, label %271

271:                                              ; preds = %265
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %300

277:                                              ; preds = %271
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %281, -1
  store i64 %282, i64* %280, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %277
  %289 = load i32, i32* @COMEDI_CB_EOA, align 4
  %290 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %291 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %290, i32 0, i32 0
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %289
  store i32 %295, i32* %293, align 8
  %296 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %297 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %298 = call i32 @pcmuio_stop_intr(%struct.comedi_device* %296, %struct.comedi_subdevice* %297)
  br label %299

299:                                              ; preds = %288, %277
  br label %300

300:                                              ; preds = %299, %271
  br label %301

301:                                              ; preds = %300, %265
  br label %302

302:                                              ; preds = %301, %170
  br label %303

303:                                              ; preds = %302, %154
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 6
  %307 = load i64, i64* %16, align 8
  %308 = call i32 @spin_unlock_irqrestore(i32* %306, i64 %307)
  %309 = load i32, i32* %17, align 4
  %310 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %311 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %310, i32 0, i32 0
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %309, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %303
  %317 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %318 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %319 = call i32 @comedi_event(%struct.comedi_device* %317, %struct.comedi_subdevice* %318)
  br label %320

320:                                              ; preds = %316, %303
  br label %321

321:                                              ; preds = %320, %147
  br label %322

322:                                              ; preds = %321
  %323 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %324 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %323, i32 1
  store %struct.comedi_subdevice* %324, %struct.comedi_subdevice** %15, align 8
  br label %136

325:                                              ; preds = %136
  br label %326

326:                                              ; preds = %325, %116
  br label %327

327:                                              ; preds = %326, %29
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %6, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %6, align 4
  br label %25

331:                                              ; preds = %25
  %332 = load i32, i32* %7, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* @IRQ_NONE, align 4
  store i32 %335, i32* %3, align 4
  br label %338

336:                                              ; preds = %331
  %337 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %336, %334
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @switch_page(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @comedi_buf_put(%struct.TYPE_12__*, i16 signext) #1

declare dso_local i32 @pcmuio_stop_intr(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
