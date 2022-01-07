; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Ttl.c_i_APCI1710_InsnBitsReadTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Ttl.c_i_APCI1710_InsnBitsReadTTLIO.c"
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
@.str = private unnamed_addr constant [29 x i8] c"Selected TTL I/O port error\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TTL I/O not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Selected digital input error\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Bad ReadType\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"The module is not a TTL module\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsReadTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %14, align 1
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call zeroext i8 @CR_AREF(i32 %26)
  store i8 %27, i8* %11, align 1
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call zeroext i8 @CR_RANGE(i32 %30)
  store i8 %31, i8* %12, align 1
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call zeroext i8 @CR_CHAN(i32 %34)
  store i8 %35, i8* %13, align 1
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %302

39:                                               ; preds = %4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, 4294901760
  %50 = load i32, i32* @APCI1710_TTL_IO, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %299

53:                                               ; preds = %39
  %54 = load i8, i8* %14, align 1
  %55 = zext i8 %54 to i32
  switch i32 %55, label %296 [
    i32 129, label %56
    i32 128, label %188
  ]

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %15, align 8
  %60 = load i8, i8* %12, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sle i32 %61, 2
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 12592
  br i1 %73, label %89, label %74

74:                                               ; preds = %63, %56
  %75 = load i8, i8* %12, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sle i32 %76, 3
  br i1 %77, label %78, label %185

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  %88 = icmp sge i32 %87, 12848
  br i1 %88, label %89, label %185

89:                                               ; preds = %78, %63
  %90 = load i8, i8* %13, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sle i32 %91, 7
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8, i8* %12, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %105, label %97

97:                                               ; preds = %93, %89
  %98 = load i8, i8* %13, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sle i32 %99, 1
  br i1 %100, label %101, label %182

101:                                              ; preds = %97
  %102 = load i8, i8* %12, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %182

105:                                              ; preds = %101, %93
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i8, i8* %11, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %179

116:                                              ; preds = %105
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i8, i8* %11, align 1
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 65535
  %126 = icmp eq i32 %125, 12592
  br i1 %126, label %153, label %127

127:                                              ; preds = %116
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i8, i8* %11, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 65535
  %137 = icmp sge i32 %136, 12848
  br i1 %137, label %138, label %176

138:                                              ; preds = %127
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i8, i8* %11, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i8, i8* %12, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %138, %116
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i8, i8* %11, align 1
  %159 = zext i8 %158 to i32
  %160 = mul nsw i32 64, %159
  %161 = add nsw i32 %157, %160
  %162 = call i32 @inl(i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i8, i8* %12, align 1
  %165 = zext i8 %164 to i32
  %166 = mul nsw i32 8, %165
  %167 = lshr i32 %163, %166
  %168 = load i8, i8* %13, align 1
  %169 = zext i8 %168 to i32
  %170 = lshr i32 %167, %169
  %171 = trunc i32 %170 to i8
  %172 = zext i8 %171 to i32
  %173 = and i32 %172, 1
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %15, align 8
  store i8 %174, i8* %175, align 1
  br label %178

176:                                              ; preds = %138, %127
  %177 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %178

178:                                              ; preds = %176, %153
  br label %181

179:                                              ; preds = %105
  %180 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %181

181:                                              ; preds = %179, %178
  br label %184

182:                                              ; preds = %101, %97
  %183 = call i32 @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %184

184:                                              ; preds = %182, %181
  br label %187

185:                                              ; preds = %78, %74
  %186 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %187

187:                                              ; preds = %185, %184
  br label %298

188:                                              ; preds = %53
  %189 = load i32*, i32** %8, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = bitcast i32* %190 to i8*
  store i8* %191, i8** %16, align 8
  %192 = load i8, i8* %12, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp sle i32 %193, 2
  br i1 %194, label %195, label %206

195:                                              ; preds = %188
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i8, i8* %11, align 1
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 12592
  br i1 %205, label %221, label %206

206:                                              ; preds = %195, %188
  %207 = load i8, i8* %12, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp sle i32 %208, 3
  br i1 %209, label %210, label %293

210:                                              ; preds = %206
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i8, i8* %11, align 1
  %216 = zext i8 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 65535
  %220 = icmp sge i32 %219, 12848
  br i1 %220, label %221, label %293

221:                                              ; preds = %210, %195
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i8, i8* %11, align 1
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %290

232:                                              ; preds = %221
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i8, i8* %11, align 1
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 12592
  br i1 %242, label %269, label %243

243:                                              ; preds = %232
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i8, i8* %11, align 1
  %249 = zext i8 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 65535
  %253 = icmp sge i32 %252, 12848
  br i1 %253, label %254, label %287

254:                                              ; preds = %243
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = load i8, i8* %11, align 1
  %259 = zext i8 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i8, i8* %12, align 1
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %287

269:                                              ; preds = %254, %232
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i8, i8* %11, align 1
  %275 = zext i8 %274 to i32
  %276 = mul nsw i32 64, %275
  %277 = add nsw i32 %273, %276
  %278 = call i32 @inl(i32 %277)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i8, i8* %12, align 1
  %281 = zext i8 %280 to i32
  %282 = mul nsw i32 8, %281
  %283 = lshr i32 %279, %282
  %284 = and i32 %283, 255
  %285 = trunc i32 %284 to i8
  %286 = load i8*, i8** %16, align 8
  store i8 %285, i8* %286, align 1
  br label %289

287:                                              ; preds = %254, %243
  %288 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %289

289:                                              ; preds = %287, %269
  br label %292

290:                                              ; preds = %221
  %291 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %292

292:                                              ; preds = %290, %289
  br label %295

293:                                              ; preds = %210, %206
  %294 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %295

295:                                              ; preds = %293, %292
  br label %298

296:                                              ; preds = %53
  %297 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %295, %187
  br label %301

299:                                              ; preds = %39
  %300 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %301

301:                                              ; preds = %299, %298
  br label %304

302:                                              ; preds = %4
  %303 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %304

304:                                              ; preds = %302, %301
  %305 = load i32, i32* %9, align 4
  ret i32 %305
}

declare dso_local zeroext i8 @CR_AREF(i32) #1

declare dso_local zeroext i8 @CR_RANGE(i32) #1

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
