; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Dig_io.c_i_APCI1710_InsnBitsDigitalIOPortOnOff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Dig_io.c_i_APCI1710_InsnBitsDigitalIOPortOnOff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_DIGITAL_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NO INPUT/OUTPUT specified\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsDigitalIOPortOnOff(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @CR_AREF(i32 %19)
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %12, align 1
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %14, align 1
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %15, align 1
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %13, align 1
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = bitcast i32* %38 to i8*
  store i8* %39, i8** %16, align 8
  %40 = load i8, i8* %14, align 1
  %41 = zext i8 %40 to i32
  switch i32 %41, label %264 [
    i32 131, label %42
    i32 128, label %91
  ]

42:                                               ; preds = %4
  %43 = load i8, i8* %12, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %89

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i8, i8* %12, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 4294901760
  %57 = load i32, i32* @APCI1710_DIGITAL_IO, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %46
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %85

71:                                               ; preds = %60
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i8, i8* %12, align 1
  %77 = zext i8 %76 to i32
  %78 = mul nsw i32 64, %77
  %79 = add nsw i32 %75, %78
  %80 = call i32 @inl(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %81, 28
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %16, align 8
  store i8 %83, i8* %84, align 1
  br label %86

85:                                               ; preds = %60
  store i32 -4, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %71
  br label %88

87:                                               ; preds = %46
  store i32 -3, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %90

89:                                               ; preds = %42
  store i32 -2, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %88
  br label %266

91:                                               ; preds = %4
  %92 = load i8, i8* %12, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %262

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i8, i8* %12, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, 4294901760
  %106 = load i32, i32* @APCI1710_DIGITAL_IO, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %260

109:                                              ; preds = %95
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i8, i8* %12, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %258

120:                                              ; preds = %109
  %121 = load i8, i8* %13, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sle i32 %122, 7
  br i1 %123, label %124, label %256

124:                                              ; preds = %120
  %125 = load i8, i8* %13, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 2
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i8, i8* %12, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  store i32 -6, i32* %9, align 4
  br label %141

141:                                              ; preds = %140, %129
  br label %142

142:                                              ; preds = %141, %124
  %143 = load i8, i8* %13, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 4
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i8, i8* %12, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  store i32 -7, i32* %9, align 4
  br label %159

159:                                              ; preds = %158, %147
  br label %160

160:                                              ; preds = %159, %142
  %161 = load i32, i32* %9, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %255

163:                                              ; preds = %160
  %164 = load i8, i8* %15, align 1
  %165 = zext i8 %164 to i32
  switch i32 %165, label %244 [
    i32 129, label %166
    i32 130, label %205
  ]

166:                                              ; preds = %163
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i8, i8* %12, align 1
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %201

177:                                              ; preds = %166
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i8, i8* %12, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 4
  %186 = load i8, i8* %185, align 4
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* %13, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %187, %189
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = trunc i32 %191 to i8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = load i8, i8* %12, align 1
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  store i8 %192, i8* %200, align 4
  br label %204

201:                                              ; preds = %166
  %202 = load i8, i8* %13, align 1
  %203 = zext i8 %202 to i32
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %201, %177
  br label %244

205:                                              ; preds = %163
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = load i8, i8* %12, align 1
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %242

216:                                              ; preds = %205
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i8, i8* %12, align 1
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 4
  %225 = load i8, i8* %224, align 4
  %226 = zext i8 %225 to i64
  %227 = load i8, i8* %13, align 1
  %228 = zext i8 %227 to i64
  %229 = sub i64 4294967295, %228
  %230 = and i64 %226, %229
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = trunc i32 %232 to i8
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = load i8, i8* %12, align 1
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 4
  store i8 %233, i8* %241, align 4
  br label %243

242:                                              ; preds = %205
  store i32 -8, i32* %9, align 4
  br label %243

243:                                              ; preds = %242, %216
  br label %244

244:                                              ; preds = %243, %163, %204
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i8, i8* %12, align 1
  %251 = zext i8 %250 to i32
  %252 = mul nsw i32 64, %251
  %253 = add nsw i32 %249, %252
  %254 = call i32 @outl(i32 %245, i32 %253)
  br label %255

255:                                              ; preds = %244, %160
  br label %257

256:                                              ; preds = %120
  store i32 -4, i32* %9, align 4
  br label %257

257:                                              ; preds = %256, %255
  br label %259

258:                                              ; preds = %109
  store i32 -5, i32* %9, align 4
  br label %259

259:                                              ; preds = %258, %257
  br label %261

260:                                              ; preds = %95
  store i32 -3, i32* %9, align 4
  br label %261

261:                                              ; preds = %260, %259
  br label %263

262:                                              ; preds = %91
  store i32 -2, i32* %9, align 4
  br label %263

263:                                              ; preds = %262, %261
  br label %266

264:                                              ; preds = %4
  store i32 -9, i32* %9, align 4
  %265 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %263, %90
  %267 = load i32, i32* %9, align 4
  ret i32 %267
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
