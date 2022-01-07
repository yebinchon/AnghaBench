; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Dig_io.c_i_APCI1710_InsnConfigDigitalIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Dig_io.c_i_APCI1710_InsnConfigDigitalIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8, i8, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Module Number invalid\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_DIGITAL_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Bi-directional channel B configuration error\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Bi-directional channel A configuration error\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"The module is not a digital I/O module\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Return Value %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnConfigDigitalIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @CR_AREF(i32 %19)
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %10, align 1
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %14, align 1
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %11, align 1
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %12, align 1
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %13, align 1
  %38 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %39 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = call i32 @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %5, align 4
  br label %167

47:                                               ; preds = %4
  %48 = load i8, i8* %14, align 1
  %49 = zext i8 %48 to i32
  switch i32 %49, label %163 [
    i32 128, label %50
    i32 129, label %80
  ]

50:                                               ; preds = %47
  %51 = load i8, i8* %13, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i8, i8* %10, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  store i32 0, i32* %69, align 4
  br label %79

70:                                               ; preds = %50
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %53
  br label %163

80:                                               ; preds = %47
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i8, i8* %10, align 1
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, 4294901760
  %91 = load i32, i32* @APCI1710_DIGITAL_IO, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %94, label %160

94:                                               ; preds = %80
  %95 = load i8, i8* %11, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i8, i8* %11, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %157

102:                                              ; preds = %98, %94
  %103 = load i8, i8* %12, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i8, i8* %12, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %154

110:                                              ; preds = %106, %102
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i8, i8* %10, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load i8, i8* %11, align 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i8, i8* %10, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i8 %119, i8* %127, align 4
  %128 = load i8, i8* %12, align 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i8, i8* %10, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  store i8 %128, i8* %136, align 1
  %137 = load i8, i8* %11, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* %12, align 1
  %140 = zext i8 %139 to i32
  %141 = mul nsw i32 %140, 2
  %142 = or i32 %138, %141
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 4
  %149 = load i8, i8* %10, align 1
  %150 = zext i8 %149 to i32
  %151 = mul nsw i32 64, %150
  %152 = add nsw i32 %148, %151
  %153 = call i32 @outl(i32 %143, i32 %152)
  br label %156

154:                                              ; preds = %106
  %155 = call i32 @DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %15, align 4
  br label %156

156:                                              ; preds = %154, %110
  br label %159

157:                                              ; preds = %98
  %158 = call i32 @DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %15, align 4
  br label %159

159:                                              ; preds = %157, %156
  br label %162

160:                                              ; preds = %80
  %161 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %15, align 4
  br label %162

162:                                              ; preds = %160, %159
  br label %163

163:                                              ; preds = %162, %47, %79
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %163, %44
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
