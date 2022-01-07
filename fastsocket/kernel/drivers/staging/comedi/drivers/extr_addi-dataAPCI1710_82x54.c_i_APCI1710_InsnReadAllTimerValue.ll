; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_InsnReadAllTimerValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_InsnReadAllTimerValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_14__* null, align 8
@APCI1710_SAVE_INTERRUPT = common dso_local global i32 0, align 4
@APCI1710_82X54_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Timer 2 not initialised see function\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Timer 1 not initialised see function\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Timer 0 not initialised see function\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"The module is not a TIMER module\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnReadAllTimerValue(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call zeroext i8 @CR_AREF(i32 %15)
  store i8 %16, i8* %10, align 1
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i8 @CR_CHAN(i32 %19)
  store i8 %20, i8* %11, align 1
  %21 = load i32*, i32** %8, align 8
  store i32* %21, i32** %12, align 8
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i8, i8* %11, align 1
  %26 = zext i8 %25 to i32
  switch i32 %26, label %208 [
    i32 128, label %27
    i32 129, label %78
  ]

27:                                               ; preds = %4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  %72 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %73 = sext i32 %72 to i64
  %74 = urem i64 %71, %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %208

78:                                               ; preds = %4
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %205

82:                                               ; preds = %78
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i8, i8* %10, align 1
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = and i64 %91, 4294901760
  %93 = load i32, i32* @APCI1710_82X54_TIMER, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %202

96:                                               ; preds = %82
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i8, i8* %10, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %199

110:                                              ; preds = %96
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load i8, i8* %10, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %196

124:                                              ; preds = %110
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i8, i8* %10, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %193

138:                                              ; preds = %124
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 12
  %144 = load i8, i8* %10, align 1
  %145 = zext i8 %144 to i32
  %146 = mul nsw i32 64, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %143, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @outl(i32 23, i32 %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 0
  %156 = load i8, i8* %10, align 1
  %157 = zext i8 %156 to i32
  %158 = mul nsw i32 64, %157
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = trunc i64 %160 to i32
  %162 = call i32 @inl(i32 %161)
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 4
  %170 = load i8, i8* %10, align 1
  %171 = zext i8 %170 to i32
  %172 = mul nsw i32 64, %171
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %169, %173
  %175 = trunc i64 %174 to i32
  %176 = call i32 @inl(i32 %175)
  %177 = load i32*, i32** %12, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 8
  %184 = load i8, i8* %10, align 1
  %185 = zext i8 %184 to i32
  %186 = mul nsw i32 64, %185
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %183, %187
  %189 = trunc i64 %188 to i32
  %190 = call i32 @inl(i32 %189)
  %191 = load i32*, i32** %12, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  store i32 %190, i32* %192, align 4
  br label %195

193:                                              ; preds = %124
  %194 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %195

195:                                              ; preds = %193, %138
  br label %198

196:                                              ; preds = %110
  %197 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %198

198:                                              ; preds = %196, %195
  br label %201

199:                                              ; preds = %96
  %200 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %201

201:                                              ; preds = %199, %198
  br label %204

202:                                              ; preds = %82
  %203 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %204

204:                                              ; preds = %202, %201
  br label %207

205:                                              ; preds = %78
  %206 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %207

207:                                              ; preds = %205, %204
  br label %208

208:                                              ; preds = %207, %4, %27
  %209 = load i32, i32* %9, align 4
  ret i32 %209
}

declare dso_local zeroext i8 @CR_AREF(i32) #1

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
