; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_ReadChronoValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_ReadChronoValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_CHRONOMETER = common dso_local global i32 0, align 4
@APCI1710_CONTINUOUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Timeout parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Chronometer not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"The module is not a Chronometer module\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_ReadChronoValue(%struct.comedi_device* %0, i8 zeroext %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %193

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 4294901760
  %28 = load i32, i32* @APCI1710_CHRONOMETER, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %190

31:                                               ; preds = %17
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %187

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = icmp uge i32 %43, 0
  br i1 %44, label %45, label %184

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ule i64 %47, 65535
  br i1 %48, label %49, label %184

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %140, %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 8
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = mul nsw i32 64, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %55, %59
  %61 = call i32 @inl(i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %91

65:                                               ; preds = %50
  %66 = load i8*, i8** %9, align 8
  store i8 3, i8* %66, align 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i8, i8* %7, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @APCI1710_CONTINUOUS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %65
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 36
  %84 = load i8, i8* %7, align 1
  %85 = zext i8 %84 to i32
  %86 = mul nsw i32 64, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = call i32 @outl(i32 0, i64 %88)
  br label %90

90:                                               ; preds = %78, %65
  br label %141

91:                                               ; preds = %50
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %121

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  store i8 2, i8* %96, align 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i8, i8* %7, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @APCI1710_CONTINUOUS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %95
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 36
  %114 = load i8, i8* %7, align 1
  %115 = zext i8 %114 to i32
  %116 = mul nsw i32 64, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = call i32 @outl(i32 0, i64 %118)
  br label %120

120:                                              ; preds = %108, %95
  br label %141

121:                                              ; preds = %91
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i8*, i8** %9, align 8
  store i8 1, i8* %126, align 1
  br label %129

127:                                              ; preds = %121
  %128 = load i8*, i8** %9, align 8
  store i8 0, i8* %128, align 1
  br label %129

129:                                              ; preds = %127, %125
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %141

136:                                              ; preds = %131
  %137 = load i32, i32* %13, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %13, align 4
  %139 = call i32 @mdelay(i32 1000)
  br label %140

140:                                              ; preds = %136
  br label %50

141:                                              ; preds = %135, %120, %90
  %142 = load i8*, i8** %9, align 8
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %168

146:                                              ; preds = %141
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 4
  %152 = load i8, i8* %7, align 1
  %153 = zext i8 %152 to i32
  %154 = mul nsw i32 64, %153
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %151, %155
  %157 = call i32 @inl(i64 %156)
  %158 = load i32*, i32** %10, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %146
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = sub i32 %164, 1
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %146
  br label %183

168:                                              ; preds = %141
  %169 = load i8*, i8** %9, align 8
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %171, 3
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i8*, i8** %9, align 8
  store i8 4, i8* %181, align 1
  br label %182

182:                                              ; preds = %180, %177, %173, %168
  br label %183

183:                                              ; preds = %182, %167
  br label %186

184:                                              ; preds = %45, %42
  %185 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -5, i32* %11, align 4
  br label %186

186:                                              ; preds = %184, %183
  br label %189

187:                                              ; preds = %31
  %188 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -4, i32* %11, align 4
  br label %189

189:                                              ; preds = %187, %186
  br label %192

190:                                              ; preds = %17
  %191 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %11, align 4
  br label %192

192:                                              ; preds = %190, %189
  br label %195

193:                                              ; preds = %5
  %194 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %11, align 4
  br label %195

195:                                              ; preds = %193, %192
  %196 = load i32, i32* %11, align 4
  ret i32 %196
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
