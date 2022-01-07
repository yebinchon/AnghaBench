; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Pwm.c_i_APCI1710_EnablePWM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Pwm.c_i_APCI1710_EnablePWM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8 }
%struct.comedi_device = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_PWM = common dso_local global i32 0, align 4
@APCI1710_ENABLE = common dso_local global i8 0, align 1
@APCI1710_DISABLE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [30 x i8] c"Interrupt parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Extern gate signal selection is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"PWM stop level selection is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"PWM stop mode selection is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"PWM start level selection is wrong\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"PWM not initialised\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Tor PWM selection is wrong\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"The module is not a PWM module\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_EnablePWM(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7) #0 {
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %9, align 8
  store i8 %1, i8* %10, align 1
  store i8 %2, i8* %11, align 1
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i8 %5, i8* %14, align 1
  store i8 %6, i8* %15, align 1
  store i8 %7, i8* %16, align 1
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* @current, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %214

26:                                               ; preds = %8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 4294901760
  %37 = load i32, i32* @APCI1710_PWM, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %211

40:                                               ; preds = %26
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sle i32 %42, 1
  br i1 %43, label %44, label %208

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 12
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = mul nsw i32 20, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = mul nsw i32 64, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = call i32 @inl(i64 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = and i32 %61, 16
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %205

64:                                               ; preds = %44
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sle i32 %66, 1
  br i1 %67, label %68, label %202

68:                                               ; preds = %64
  %69 = load i8, i8* %13, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sle i32 %70, 1
  br i1 %71, label %72, label %199

72:                                               ; preds = %68
  %73 = load i8, i8* %14, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sle i32 %74, 2
  br i1 %75, label %76, label %196

76:                                               ; preds = %72
  %77 = load i8, i8* %15, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %193

80:                                               ; preds = %76
  %81 = load i8, i8* %16, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @APCI1710_ENABLE, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i8, i8* %16, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @APCI1710_DISABLE, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %190

92:                                               ; preds = %86, %80
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 8
  %98 = load i8, i8* %11, align 1
  %99 = zext i8 %98 to i32
  %100 = mul nsw i32 20, %99
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  %103 = load i8, i8* %10, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 64, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = call i32 @inl(i64 %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = and i32 %109, 128
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i8, i8* %13, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %111, %113
  %115 = load i8, i8* %16, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 3
  %118 = or i32 %114, %117
  %119 = load i8, i8* %15, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 4
  %122 = or i32 %118, %121
  %123 = load i8, i8* %12, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 5
  %126 = or i32 %122, %125
  store i32 %126, i32* %19, align 4
  %127 = load i8, i8* %14, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 3
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %92
  %132 = load i32, i32* %19, align 4
  %133 = or i32 %132, 2
  store i32 %133, i32* %19, align 4
  %134 = load i8, i8* %14, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 2
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* %19, align 4
  %140 = or i32 %139, 4
  store i32 %140, i32* %19, align 4
  br label %141

141:                                              ; preds = %138, %131
  br label %142

142:                                              ; preds = %141, %92
  %143 = load i8, i8* %16, align 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i8, i8* %10, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i8, i8* %11, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i8 %143, i8* %156, align 1
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 8
  %163 = load i8, i8* %11, align 1
  %164 = zext i8 %163 to i32
  %165 = mul nsw i32 20, %164
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %162, %166
  %168 = load i8, i8* %10, align 1
  %169 = zext i8 %168 to i32
  %170 = mul nsw i32 64, %169
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %167, %171
  %173 = call i32 @outl(i32 %157, i64 %172)
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 12
  %179 = load i8, i8* %11, align 1
  %180 = zext i8 %179 to i32
  %181 = mul nsw i32 20, %180
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %178, %182
  %184 = load i8, i8* %10, align 1
  %185 = zext i8 %184 to i32
  %186 = mul nsw i32 64, %185
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %183, %187
  %189 = call i32 @outl(i32 1, i64 %188)
  br label %192

190:                                              ; preds = %86
  %191 = call i32 @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -10, i32* %17, align 4
  br label %192

192:                                              ; preds = %190, %142
  br label %195

193:                                              ; preds = %76
  %194 = call i32 @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -9, i32* %17, align 4
  br label %195

195:                                              ; preds = %193, %192
  br label %198

196:                                              ; preds = %72
  %197 = call i32 @DPRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -8, i32* %17, align 4
  br label %198

198:                                              ; preds = %196, %195
  br label %201

199:                                              ; preds = %68
  %200 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 -7, i32* %17, align 4
  br label %201

201:                                              ; preds = %199, %198
  br label %204

202:                                              ; preds = %64
  %203 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 -6, i32* %17, align 4
  br label %204

204:                                              ; preds = %202, %201
  br label %207

205:                                              ; preds = %44
  %206 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 -5, i32* %17, align 4
  br label %207

207:                                              ; preds = %205, %204
  br label %210

208:                                              ; preds = %40
  %209 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 -4, i32* %17, align 4
  br label %210

210:                                              ; preds = %208, %207
  br label %213

211:                                              ; preds = %26
  %212 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 -3, i32* %17, align 4
  br label %213

213:                                              ; preds = %211, %210
  br label %216

214:                                              ; preds = %8
  %215 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 -2, i32* %17, align 4
  br label %216

216:                                              ; preds = %214, %213
  %217 = load i32, i32* %17, align 4
  ret i32 %217
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
