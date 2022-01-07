; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Ttl.c_i_APCI1710_InsnConfigInitTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Ttl.c_i_APCI1710_InsnConfigInitTTLIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_TTL_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Port D mode selection is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Port C mode selection is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Port B mode selection is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Port A mode selection is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Function not available for this version\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Bad Config Type\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"The module is not a TTL module\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnConfigInitTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CR_AREF(i32 %18)
  %20 = trunc i64 %19 to i8
  store i8 %20, i8* %10, align 1
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %270

31:                                               ; preds = %4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i8, i8* %10, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 4294901760
  %42 = load i32, i32* @APCI1710_TTL_IO, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %267

45:                                               ; preds = %31
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  switch i32 %47, label %264 [
    i32 129, label %48
    i32 128, label %107
  ]

48:                                               ; preds = %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i8, i8* %10, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 0, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 0, i32* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 20
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 64, %103
  %105 = add nsw i32 %101, %104
  %106 = call i32 @outl(i8 zeroext 8, i32 %105)
  br label %266

107:                                              ; preds = %45
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %12, align 1
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %13, align 1
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %14, align 1
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %15, align 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i8, i8* %10, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 65535
  %133 = icmp sge i32 %132, 12848
  br i1 %133, label %134, label %261

134:                                              ; preds = %107
  %135 = load i8, i8* %12, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i8, i8* %12, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %258

142:                                              ; preds = %138, %134
  %143 = load i8, i8* %13, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i8, i8* %13, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %255

150:                                              ; preds = %146, %142
  %151 = load i8, i8* %14, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i8, i8* %14, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %252

158:                                              ; preds = %154, %150
  %159 = load i8, i8* %15, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i8, i8* %15, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %249

166:                                              ; preds = %162, %158
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i8, i8* %10, align 1
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load i8, i8* %12, align 1
  %176 = zext i8 %175 to i32
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i8, i8* %10, align 1
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 %176, i32* %186, align 4
  %187 = load i8, i8* %13, align 1
  %188 = zext i8 %187 to i32
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i8, i8* %10, align 1
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %188, i32* %198, align 4
  %199 = load i8, i8* %14, align 1
  %200 = zext i8 %199 to i32
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load i8, i8* %10, align 1
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  store i32 %200, i32* %210, align 4
  %211 = load i8, i8* %15, align 1
  %212 = zext i8 %211 to i32
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = load i8, i8* %10, align 1
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 3
  store i32 %212, i32* %222, align 4
  %223 = load i8, i8* %12, align 1
  %224 = zext i8 %223 to i32
  %225 = shl i32 %224, 0
  %226 = load i8, i8* %13, align 1
  %227 = zext i8 %226 to i32
  %228 = shl i32 %227, 1
  %229 = or i32 %225, %228
  %230 = load i8, i8* %14, align 1
  %231 = zext i8 %230 to i32
  %232 = shl i32 %231, 2
  %233 = or i32 %229, %232
  %234 = load i8, i8* %15, align 1
  %235 = zext i8 %234 to i32
  %236 = shl i32 %235, 3
  %237 = or i32 %233, %236
  %238 = trunc i32 %237 to i8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, 20
  %244 = load i8, i8* %10, align 1
  %245 = zext i8 %244 to i32
  %246 = mul nsw i32 64, %245
  %247 = add nsw i32 %243, %246
  %248 = call i32 @outl(i8 zeroext %238, i32 %247)
  br label %251

249:                                              ; preds = %162
  %250 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -8, i32* %9, align 4
  br label %251

251:                                              ; preds = %249, %166
  br label %254

252:                                              ; preds = %154
  %253 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -7, i32* %9, align 4
  br label %254

254:                                              ; preds = %252, %251
  br label %257

255:                                              ; preds = %146
  %256 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %257

257:                                              ; preds = %255, %254
  br label %260

258:                                              ; preds = %138
  %259 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %260

260:                                              ; preds = %258, %257
  br label %263

261:                                              ; preds = %107
  %262 = call i32 @DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %263

263:                                              ; preds = %261, %260
  br label %266

264:                                              ; preds = %45
  %265 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %263, %48
  br label %269

267:                                              ; preds = %31
  %268 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %269

269:                                              ; preds = %267, %266
  br label %272

270:                                              ; preds = %4
  %271 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %272

272:                                              ; preds = %270, %269
  %273 = load i32, i32* %9, align 4
  ret i32 %273
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @outl(i8 zeroext, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
