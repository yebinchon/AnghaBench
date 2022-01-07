; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_InsnBitsChronoDigitalIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_InsnBitsChronoDigitalIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_CHRONOMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"The selected digital output is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The selected digital input is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Chronometer not initialised\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"The module is not a Chronometer module\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsChronoDigitalIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i8 @CR_AREF(i32 %19)
  store i8 %20, i8* %10, align 1
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %13, align 1
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %173

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
  %42 = load i32, i32* @APCI1710_CHRONOMETER, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %170

45:                                               ; preds = %31
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %167

56:                                               ; preds = %45
  %57 = load i8, i8* %13, align 1
  %58 = zext i8 %57 to i32
  switch i32 %58, label %166 [
    i32 129, label %59
    i32 128, label %86
    i32 131, label %113
    i32 130, label %147
  ]

59:                                               ; preds = %56
  %60 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @CR_CHAN(i32 %62)
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %11, align 1
  %65 = load i8, i8* %11, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sle i32 %66, 2
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 20
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %73, %76
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = mul nsw i32 64, %79
  %81 = add nsw i32 %77, %80
  %82 = call i32 @outl(i32 0, i32 %81)
  br label %85

83:                                               ; preds = %59
  %84 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %68
  br label %166

86:                                               ; preds = %56
  %87 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @CR_CHAN(i32 %89)
  %91 = trunc i64 %90 to i8
  store i8 %91, i8* %11, align 1
  %92 = load i8, i8* %11, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sle i32 %93, 2
  br i1 %94, label %95, label %110

95:                                               ; preds = %86
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 20
  %101 = load i8, i8* %11, align 1
  %102 = zext i8 %101 to i32
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 %100, %103
  %105 = load i8, i8* %10, align 1
  %106 = zext i8 %105 to i32
  %107 = mul nsw i32 64, %106
  %108 = add nsw i32 %104, %107
  %109 = call i32 @outl(i32 1, i32 %108)
  br label %112

110:                                              ; preds = %86
  %111 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %95
  br label %166

113:                                              ; preds = %56
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = bitcast i32* %115 to i8*
  store i8* %116, i8** %15, align 8
  %117 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @CR_CHAN(i32 %119)
  %121 = trunc i64 %120 to i8
  store i8 %121, i8* %12, align 1
  %122 = load i8, i8* %12, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sle i32 %123, 2
  br i1 %124, label %125, label %144

125:                                              ; preds = %113
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 12
  %131 = load i8, i8* %10, align 1
  %132 = zext i8 %131 to i32
  %133 = mul nsw i32 64, %132
  %134 = add nsw i32 %130, %133
  %135 = call i32 @inl(i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i8, i8* %12, align 1
  %138 = zext i8 %137 to i32
  %139 = lshr i32 %136, %138
  %140 = and i32 %139, 1
  %141 = xor i32 %140, 1
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %15, align 8
  store i8 %142, i8* %143, align 1
  br label %146

144:                                              ; preds = %113
  %145 = call i32 @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %146

146:                                              ; preds = %144, %125
  br label %166

147:                                              ; preds = %56
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = bitcast i32* %149 to i8*
  store i8* %150, i8** %16, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 12
  %156 = load i8, i8* %10, align 1
  %157 = zext i8 %156 to i32
  %158 = mul nsw i32 64, %157
  %159 = add nsw i32 %155, %158
  %160 = call i32 @inl(i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, 7
  %163 = xor i32 %162, 7
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %16, align 8
  store i8 %164, i8* %165, align 1
  br label %166

166:                                              ; preds = %56, %147, %146, %112, %85
  br label %169

167:                                              ; preds = %45
  %168 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %169

169:                                              ; preds = %167, %166
  br label %172

170:                                              ; preds = %31
  %171 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %172

172:                                              ; preds = %170, %169
  br label %175

173:                                              ; preds = %4
  %174 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %175

175:                                              ; preds = %173, %172
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local zeroext i8 @CR_AREF(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
