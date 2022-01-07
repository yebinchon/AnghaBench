; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_GetPWMInitialisation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_GetPWMInitialisation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PWM not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Tor PWM selection is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"The module is not a PWM module\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_GetPWMInitialisation(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i8* %3, i32* %4, i32* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca %struct.comedi_device*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %13, align 8
  store i8 %1, i8* %14, align 1
  store i8 %2, i8* %15, align 1
  store i8* %3, i8** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  store i8* %11, i8** %24, align 8
  store i32 0, i32* %25, align 4
  %28 = load i8, i8* %14, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %206

31:                                               ; preds = %12
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i8, i8* %14, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 4294901760
  %42 = load i32, i32* @APCI1710_PWM, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %203

45:                                               ; preds = %31
  %46 = load i8, i8* %15, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sle i32 %47, 1
  br i1 %48, label %49, label %200

49:                                               ; preds = %45
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 12
  %55 = load i8, i8* %15, align 1
  %56 = zext i8 %55 to i32
  %57 = mul nsw i32 20, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = load i8, i8* %14, align 1
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 64, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %59, %63
  %65 = call i32 @inl(i64 %64)
  store i32 %65, i32* %26, align 4
  %66 = load i32, i32* %26, align 4
  %67 = and i32 %66, 16
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %197

69:                                               ; preds = %49
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 0
  %75 = load i8, i8* %15, align 1
  %76 = zext i8 %75 to i32
  %77 = mul nsw i32 20, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = load i8, i8* %14, align 1
  %81 = zext i8 %80 to i32
  %82 = mul nsw i32 64, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = call i32 @inl(i64 %84)
  %86 = load i32*, i32** %17, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 4
  %92 = load i8, i8* %15, align 1
  %93 = zext i8 %92 to i32
  %94 = mul nsw i32 20, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  %97 = load i8, i8* %14, align 1
  %98 = zext i8 %97 to i32
  %99 = mul nsw i32 64, %98
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %96, %100
  %102 = call i32 @inl(i64 %101)
  %103 = load i32*, i32** %18, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 8
  %109 = load i8, i8* %15, align 1
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 20, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  %114 = load i8, i8* %14, align 1
  %115 = zext i8 %114 to i32
  %116 = mul nsw i32 64, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = call i32 @inl(i64 %118)
  store i32 %119, i32* %27, align 4
  %120 = load i32, i32* %27, align 4
  %121 = lshr i32 %120, 5
  %122 = and i32 %121, 1
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %19, align 8
  store i8 %123, i8* %124, align 1
  %125 = load i32, i32* %27, align 4
  %126 = lshr i32 %125, 0
  %127 = and i32 %126, 1
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %20, align 8
  store i8 %128, i8* %129, align 1
  %130 = load i32, i32* %27, align 4
  %131 = lshr i32 %130, 1
  %132 = and i32 %131, 1
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %21, align 8
  store i8 %133, i8* %134, align 1
  %135 = load i32, i32* %27, align 4
  %136 = lshr i32 %135, 4
  %137 = and i32 %136, 1
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %22, align 8
  store i8 %138, i8* %139, align 1
  %140 = load i32, i32* %27, align 4
  %141 = lshr i32 %140, 3
  %142 = and i32 %141, 1
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %23, align 8
  store i8 %143, i8* %144, align 1
  %145 = load i8*, i8** %21, align 8
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %69
  %149 = load i8*, i8** %21, align 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i32, i32* %27, align 4
  %153 = lshr i32 %152, 2
  %154 = and i32 %153, 1
  %155 = trunc i32 %154 to i8
  %156 = zext i8 %155 to i32
  %157 = add nsw i32 %151, %156
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %21, align 8
  store i8 %158, i8* %159, align 1
  br label %160

160:                                              ; preds = %148, %69
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 8
  %166 = load i8, i8* %15, align 1
  %167 = zext i8 %166 to i32
  %168 = mul nsw i32 20, %167
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %165, %169
  %171 = load i8, i8* %14, align 1
  %172 = zext i8 %171 to i32
  %173 = mul nsw i32 64, %172
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %170, %174
  %176 = call i32 @inl(i64 %175)
  store i32 %176, i32* %27, align 4
  %177 = load i32, i32* %27, align 4
  %178 = lshr i32 %177, 0
  %179 = and i32 %178, 1
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %24, align 8
  store i8 %180, i8* %181, align 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load i8, i8* %14, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i8, i8* %15, align 1
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = load i8*, i8** %16, align 8
  store i8 %195, i8* %196, align 1
  br label %199

197:                                              ; preds = %49
  %198 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -5, i32* %25, align 4
  br label %199

199:                                              ; preds = %197, %160
  br label %202

200:                                              ; preds = %45
  %201 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -4, i32* %25, align 4
  br label %202

202:                                              ; preds = %200, %199
  br label %205

203:                                              ; preds = %31
  %204 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %25, align 4
  br label %205

205:                                              ; preds = %203, %202
  br label %208

206:                                              ; preds = %12
  %207 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %25, align 4
  br label %208

208:                                              ; preds = %206, %205
  %209 = load i32, i32* %25, align 4
  ret i32 %209
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
