; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Inp_cpt.c_i_APCI1710_InsnBitsReadWritePulseEncoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Inp_cpt.c_i_APCI1710_InsnBitsReadWritePulseEncoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Pulse encoder not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Pulse encoder selection is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Module selection is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsReadWritePulseEncoder(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CR_AREF(i32 %22)
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %14, align 1
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %12, align 1
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %13, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32* %37, i32** %15, align 8
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sle i32 %39, 3
  br i1 %40, label %41, label %177

41:                                               ; preds = %4
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 3
  br i1 %44, label %45, label %174

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %171

61:                                               ; preds = %45
  %62 = load i8, i8* %14, align 1
  %63 = zext i8 %62 to i32
  switch i32 %63, label %170 [
    i32 129, label %64
    i32 128, label %152
  ]

64:                                               ; preds = %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 16
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = mul nsw i32 64, %71
  %73 = add nsw i32 %69, %72
  %74 = call i32 @inl(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i8, i8* %11, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %85, i32* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i8, i8* %11, align 1
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i8, i8* %12, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 1, %104
  %106 = lshr i32 %102, %105
  %107 = trunc i32 %106 to i8
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 1
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %13, align 8
  store i8 %110, i8* %111, align 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i8, i8* %11, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = zext i32 %120 to i64
  %122 = load i8, i8* %12, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 1, %123
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = sub i64 4294967295, %126
  %128 = and i64 %121, %127
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load i8, i8* %11, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %129, i32* %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8, i8* %12, align 1
  %143 = zext i8 %142 to i32
  %144 = mul nsw i32 4, %143
  %145 = add nsw i32 %141, %144
  %146 = load i8, i8* %11, align 1
  %147 = zext i8 %146 to i32
  %148 = mul nsw i32 64, %147
  %149 = add nsw i32 %145, %148
  %150 = call i32 @inl(i32 %149)
  %151 = load i32*, i32** %15, align 8
  store i32 %150, i32* %151, align 4
  br label %170

152:                                              ; preds = %61
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i8, i8* %12, align 1
  %162 = zext i8 %161 to i32
  %163 = mul nsw i32 4, %162
  %164 = add nsw i32 %160, %163
  %165 = load i8, i8* %11, align 1
  %166 = zext i8 %165 to i32
  %167 = mul nsw i32 64, %166
  %168 = add nsw i32 %164, %167
  %169 = call i32 @outl(i32 %156, i32 %168)
  br label %170

170:                                              ; preds = %152, %61, %64
  br label %173

171:                                              ; preds = %45
  %172 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %173

173:                                              ; preds = %171, %170
  br label %176

174:                                              ; preds = %41
  %175 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %176

176:                                              ; preds = %174, %173
  br label %179

177:                                              ; preds = %4
  %178 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %179

179:                                              ; preds = %177, %176
  %180 = load i32, i32* %9, align 4
  ret i32 %180
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
