; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Dig_io.c_i_APCI1710_InsnReadDigitalIOChlValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Dig_io.c_i_APCI1710_InsnReadDigitalIOChlValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_DIGITAL_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Digital I/O not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Selected digital input error\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"The module is not a digital I/O module\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnReadDigitalIOChlValue(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @CR_AREF(i32 %16)
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %11, align 1
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @CR_CHAN(i32 %21)
  %23 = trunc i64 %22 to i8
  store i8 %23, i8* %12, align 1
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %13, align 8
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %133

35:                                               ; preds = %4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 4294901760
  %46 = load i32, i32* @APCI1710_DIGITAL_IO, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %130

49:                                               ; preds = %35
  %50 = load i8, i8* %12, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sle i32 %51, 6
  br i1 %52, label %53, label %127

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %124

64:                                               ; preds = %53
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sgt i32 %66, 4
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i8, i8* %11, align 1
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i32 -6, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %72
  br label %98

85:                                               ; preds = %68
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  store i32 -7, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %84
  br label %99

99:                                               ; preds = %98, %64
  %100 = load i32, i32* %9, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i8, i8* %11, align 1
  %108 = zext i8 %107 to i32
  %109 = mul nsw i32 64, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %106, %110
  %112 = call i32 @inl(i64 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = xor i32 %113, 28
  %115 = load i8, i8* %12, align 1
  %116 = zext i8 %115 to i32
  %117 = lshr i32 %114, %116
  %118 = trunc i32 %117 to i8
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 1
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %13, align 8
  store i8 %121, i8* %122, align 1
  br label %123

123:                                              ; preds = %102, %99
  br label %126

124:                                              ; preds = %53
  %125 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %123
  br label %129

127:                                              ; preds = %49
  %128 = call i32 @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %129

129:                                              ; preds = %127, %126
  br label %132

130:                                              ; preds = %35
  %131 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %132

132:                                              ; preds = %130, %129
  br label %135

133:                                              ; preds = %4
  %134 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %135

135:                                              ; preds = %133, %132
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
