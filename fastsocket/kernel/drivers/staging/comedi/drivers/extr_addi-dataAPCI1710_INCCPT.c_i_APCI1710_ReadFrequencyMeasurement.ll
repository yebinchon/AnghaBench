; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_ReadFrequencyMeasurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_ReadFrequencyMeasurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_14__* null, align 8
@APCI1710_16BIT_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Frequency measurement logic not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Counter not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_ReadFrequencyMeasurement(%struct.comedi_device* %0, i8 zeroext %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %232

17:                                               ; preds = %5
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %229

29:                                               ; preds = %17
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %226

41:                                               ; preds = %29
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = load i8, i8* %7, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %222

53:                                               ; preds = %41
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 32
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = mul nsw i32 64, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = call i32 @inl(i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %218

68:                                               ; preds = %53
  %69 = load i8*, i8** %8, align 8
  store i8 2, i8* %69, align 1
  %70 = load i32, i32* %13, align 4
  %71 = lshr i32 %70, 1
  %72 = and i32 %71, 3
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %9, align 8
  store i8 %73, i8* %74, align 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 28
  %80 = load i8, i8* %7, align 1
  %81 = zext i8 %80 to i32
  %82 = mul nsw i32 64, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = call i32 @inl(i64 %84)
  %86 = load i32*, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %162

91:                                               ; preds = %68
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i8, i8* %7, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @APCI1710_16BIT_COUNTER, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @APCI1710_16BIT_COUNTER, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %149

107:                                              ; preds = %91
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 65535
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 65535
  store i32 %115, i32* %12, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  %119 = and i64 %118, 4294901760
  %120 = load i32, i32* %12, align 4
  %121 = sub i32 65535, %120
  %122 = zext i32 %121 to i64
  %123 = or i64 %119, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %10, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %112, %107
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  %130 = and i64 %129, 4294901760
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = lshr i32 %134, 16
  %136 = and i32 %135, 65535
  store i32 %136, i32* %12, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  %140 = and i64 %139, 65535
  %141 = load i32, i32* %12, align 4
  %142 = sub i32 65535, %141
  %143 = shl i32 %142, 16
  %144 = zext i32 %143 to i64
  %145 = or i64 %140, %144
  %146 = trunc i64 %145 to i32
  %147 = load i32*, i32** %10, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %132, %126
  br label %161

149:                                              ; preds = %91
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = zext i32 %155 to i64
  %157 = sub i64 4294967295, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %10, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %153, %149
  br label %161

161:                                              ; preds = %160, %148
  br label %217

162:                                              ; preds = %68
  %163 = load i8*, i8** %9, align 8
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %190

167:                                              ; preds = %162
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  %171 = and i64 %170, 4294901760
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %167
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 65535
  store i32 %177, i32* %12, align 4
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  %181 = and i64 %180, 65535
  %182 = load i32, i32* %12, align 4
  %183 = sub i32 65535, %182
  %184 = shl i32 %183, 16
  %185 = zext i32 %184 to i64
  %186 = or i64 %181, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32*, i32** %10, align 8
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %173, %167
  br label %216

190:                                              ; preds = %162
  %191 = load i8*, i8** %9, align 8
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %215

195:                                              ; preds = %190
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 65535
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %195
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 65535
  store i32 %203, i32* %12, align 4
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  %207 = and i64 %206, 4294901760
  %208 = load i32, i32* %12, align 4
  %209 = sub i32 65535, %208
  %210 = zext i32 %209 to i64
  %211 = or i64 %207, %210
  %212 = trunc i64 %211 to i32
  %213 = load i32*, i32** %10, align 8
  store i32 %212, i32* %213, align 4
  br label %214

214:                                              ; preds = %200, %195
  br label %215

215:                                              ; preds = %214, %190
  br label %216

216:                                              ; preds = %215, %189
  br label %217

217:                                              ; preds = %216, %161
  br label %221

218:                                              ; preds = %53
  %219 = load i8*, i8** %8, align 8
  store i8 1, i8* %219, align 1
  %220 = load i8*, i8** %9, align 8
  store i8 0, i8* %220, align 1
  br label %221

221:                                              ; preds = %218, %217
  br label %225

222:                                              ; preds = %41
  %223 = load i8*, i8** %8, align 8
  store i8 0, i8* %223, align 1
  %224 = load i8*, i8** %9, align 8
  store i8 0, i8* %224, align 1
  br label %225

225:                                              ; preds = %222, %221
  br label %228

226:                                              ; preds = %29
  %227 = call i32 @DPRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %11, align 4
  br label %228

228:                                              ; preds = %226, %225
  br label %231

229:                                              ; preds = %17
  %230 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %11, align 4
  br label %231

231:                                              ; preds = %229, %228
  br label %234

232:                                              ; preds = %5
  %233 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %11, align 4
  br label %234

234:                                              ; preds = %232, %231
  %235 = load i32, i32* %11, align 4
  ret i32 %235
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
