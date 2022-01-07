; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_InsnReadChrono.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_InsnReadChrono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"In Chrono Read Interrupt\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@APCI1710_SAVE_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ReadType Parameter wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnReadChrono(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call zeroext i8 @CR_CHAN(i32 %16)
  store i8 %17, i8* %9, align 1
  %18 = load i8, i8* %9, align 1
  %19 = zext i8 %18 to i32
  switch i32 %19, label %130 [
    i32 130, label %20
    i32 128, label %31
    i32 131, label %50
    i32 129, label %78
  ]

20:                                               ; preds = %4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @CR_AREF(i32 %24)
  %26 = trunc i64 %25 to i8
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @i_APCI1710_GetChronoProgressStatus(%struct.comedi_device* %21, i8 zeroext %26, i8* %29)
  store i32 %30, i32* %10, align 4
  br label %132

31:                                               ; preds = %4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @CR_AREF(i32 %35)
  %37 = trunc i64 %36 to i8
  %38 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = bitcast i32* %45 to i8*
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @i_APCI1710_ReadChronoValue(%struct.comedi_device* %32, i8 zeroext %37, i32 %43, i8* %46, i32* %48)
  store i32 %49, i32* %10, align 4
  br label %132

50:                                               ; preds = %4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @CR_AREF(i32 %54)
  %56 = trunc i64 %55 to i8
  %57 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = bitcast i32* %66 to i8*
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = bitcast i32* %69 to i8*
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = call i32 @i_APCI1710_ConvertChronoValue(%struct.comedi_device* %51, i8 zeroext %56, i32 %62, i32* %64, i8* %67, i8* %70, i32* %72, i32* %74, i32* %76)
  store i32 %77, i32* %10, align 4
  br label %132

78:                                               ; preds = %4
  %79 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  %124 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %125 = sext i32 %124 to i64
  %126 = urem i64 %123, %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  br label %132

130:                                              ; preds = %4
  %131 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %78, %50, %31, %20
  %133 = load i32, i32* %10, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %10, align 4
  ret i32 %140
}

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI1710_GetChronoProgressStatus(%struct.comedi_device*, i8 zeroext, i8*) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @i_APCI1710_ReadChronoValue(%struct.comedi_device*, i8 zeroext, i32, i8*, i32*) #1

declare dso_local i32 @i_APCI1710_ConvertChronoValue(%struct.comedi_device*, i8 zeroext, i32, i32*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
