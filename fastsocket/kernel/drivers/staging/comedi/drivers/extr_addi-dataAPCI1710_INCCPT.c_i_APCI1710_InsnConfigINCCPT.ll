; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InsnConfigINCCPT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InsnConfigINCCPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"\0AINC_CPT\00", align 1
@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Insn Config : Config Parameter Wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnConfigINCCPT(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CR_CHAN(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @current, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %132 [
    i32 132, label %20
    i32 134, label %47
    i32 129, label %53
    i32 128, label %76
    i32 131, label %87
    i32 133, label %102
    i32 130, label %112
  ]

20:                                               ; preds = %4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CR_AREF(i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = call i32 @i_APCI1710_InitCounter(%struct.comedi_device* %21, i32 %25, i8 zeroext %29, i8 zeroext %33, i8 zeroext %37, i8 zeroext %41, i8 zeroext %45)
  store i32 %46, i32* %10, align 4
  br label %134

47:                                               ; preds = %4
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @i_APCI1710_CounterAutoTest(%struct.comedi_device* %48, i8* %51)
  store i32 %52, i32* %10, align 4
  br label %134

53:                                               ; preds = %4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %55 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CR_AREF(i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = trunc i32 %73 to i8
  %75 = call i32 @i_APCI1710_InitIndex(%struct.comedi_device* %54, i32 %58, i8 zeroext %62, i8 zeroext %66, i8 zeroext %70, i8 zeroext %74)
  store i32 %75, i32* %10, align 4
  br label %134

76:                                               ; preds = %4
  %77 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %78 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @CR_AREF(i32 %80)
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = trunc i32 %84 to i8
  %86 = call i32 @i_APCI1710_InitReference(%struct.comedi_device* %77, i32 %81, i8 zeroext %85)
  store i32 %86, i32* %10, align 4
  br label %134

87:                                               ; preds = %4
  %88 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %89 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CR_AREF(i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = trunc i32 %99 to i8
  %101 = call i32 @i_APCI1710_InitExternalStrobe(%struct.comedi_device* %88, i32 %92, i8 zeroext %96, i8 zeroext %100)
  store i32 %101, i32* %10, align 4
  br label %134

102:                                              ; preds = %4
  %103 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %104 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CR_AREF(i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @i_APCI1710_InitCompareLogic(%struct.comedi_device* %103, i32 %107, i32 %110)
  store i32 %111, i32* %10, align 4
  br label %134

112:                                              ; preds = %4
  %113 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %114 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @CR_AREF(i32 %116)
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = trunc i32 %120 to i8
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = trunc i32 %124 to i8
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @i_APCI1710_InitFrequencyMeasurement(%struct.comedi_device* %113, i32 %117, i8 zeroext %121, i8 zeroext %125, i32 %128, i32* %130)
  store i32 %131, i32* %10, align 4
  br label %134

132:                                              ; preds = %4
  %133 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %112, %102, %87, %76, %53, %47, %20
  %135 = load i32, i32* %10, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %137, %134
  %142 = load i32, i32* %10, align 4
  ret i32 %142
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @i_APCI1710_InitCounter(%struct.comedi_device*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @i_APCI1710_CounterAutoTest(%struct.comedi_device*, i8*) #1

declare dso_local i32 @i_APCI1710_InitIndex(%struct.comedi_device*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_InitReference(%struct.comedi_device*, i32, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_InitExternalStrobe(%struct.comedi_device*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_InitCompareLogic(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @i_APCI1710_InitFrequencyMeasurement(%struct.comedi_device*, i32, i8 zeroext, i8 zeroext, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
