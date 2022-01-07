; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_InsnWriteINCCPT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_InsnWriteINCCPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Write Config Parameter Wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnWriteINCCPT(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %15 = load i32, i32* @current, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %113 [
    i32 130, label %19
    i32 134, label %27
    i32 129, label %35
    i32 128, label %50
    i32 131, label %61
    i32 135, label %69
    i32 133, label %77
    i32 137, label %85
    i32 132, label %93
    i32 136, label %105
  ]

19:                                               ; preds = %4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @CR_AREF(i32 %23)
  %25 = trunc i64 %24 to i8
  %26 = call i32 @i_APCI1710_EnableLatchInterrupt(%struct.comedi_device* %20, i8 zeroext %25)
  store i32 %26, i32* %10, align 4
  br label %115

27:                                               ; preds = %4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @CR_AREF(i32 %31)
  %33 = trunc i64 %32 to i8
  %34 = call i32 @i_APCI1710_DisableLatchInterrupt(%struct.comedi_device* %28, i8 zeroext %33)
  store i32 %34, i32* %10, align 4
  br label %115

35:                                               ; preds = %4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @CR_AREF(i32 %39)
  %41 = trunc i64 %40 to i8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @i_APCI1710_Write16BitCounterValue(%struct.comedi_device* %36, i8 zeroext %41, i8 zeroext %45, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %115

50:                                               ; preds = %4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @CR_AREF(i32 %54)
  %56 = trunc i64 %55 to i8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @i_APCI1710_Write32BitCounterValue(%struct.comedi_device* %51, i8 zeroext %56, i32 %59)
  store i32 %60, i32* %10, align 4
  br label %115

61:                                               ; preds = %4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @CR_AREF(i32 %65)
  %67 = trunc i64 %66 to i8
  %68 = call i32 @i_APCI1710_EnableIndex(%struct.comedi_device* %62, i8 zeroext %67)
  br label %115

69:                                               ; preds = %4
  %70 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %71 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @CR_AREF(i32 %73)
  %75 = trunc i64 %74 to i8
  %76 = call i32 @i_APCI1710_DisableIndex(%struct.comedi_device* %70, i8 zeroext %75)
  store i32 %76, i32* %10, align 4
  br label %115

77:                                               ; preds = %4
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @CR_AREF(i32 %81)
  %83 = trunc i64 %82 to i8
  %84 = call i32 @i_APCI1710_EnableCompareLogic(%struct.comedi_device* %78, i8 zeroext %83)
  store i32 %84, i32* %10, align 4
  br label %115

85:                                               ; preds = %4
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @CR_AREF(i32 %89)
  %91 = trunc i64 %90 to i8
  %92 = call i32 @i_APCI1710_DisableCompareLogic(%struct.comedi_device* %86, i8 zeroext %91)
  store i32 %92, i32* %10, align 4
  br label %115

93:                                               ; preds = %4
  %94 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %95 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @CR_AREF(i32 %97)
  %99 = trunc i64 %98 to i8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = trunc i32 %102 to i8
  %104 = call i32 @i_APCI1710_EnableFrequencyMeasurement(%struct.comedi_device* %94, i8 zeroext %99, i8 zeroext %103)
  store i32 %104, i32* %10, align 4
  br label %115

105:                                              ; preds = %4
  %106 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %107 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @CR_AREF(i32 %109)
  %111 = trunc i64 %110 to i8
  %112 = call i32 @i_APCI1710_DisableFrequencyMeasurement(%struct.comedi_device* %106, i8 zeroext %111)
  store i32 %112, i32* %10, align 4
  br label %115

113:                                              ; preds = %4
  %114 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %105, %93, %85, %77, %69, %61, %50, %35, %27, %19
  %116 = load i32, i32* %10, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI1710_EnableLatchInterrupt(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @i_APCI1710_DisableLatchInterrupt(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_Write16BitCounterValue(%struct.comedi_device*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @i_APCI1710_Write32BitCounterValue(%struct.comedi_device*, i8 zeroext, i32) #1

declare dso_local i32 @i_APCI1710_EnableIndex(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_DisableIndex(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_EnableCompareLogic(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_DisableCompareLogic(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_EnableFrequencyMeasurement(%struct.comedi_device*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_DisableFrequencyMeasurement(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
