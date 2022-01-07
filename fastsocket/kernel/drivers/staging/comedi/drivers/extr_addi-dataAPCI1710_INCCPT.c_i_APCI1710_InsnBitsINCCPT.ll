; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InsnBitsINCCPT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InsnBitsINCCPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Bits Config Parameter Wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsINCCPT(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  switch i32 %18, label %86 [
    i32 133, label %19
    i32 134, label %27
    i32 128, label %30
    i32 132, label %46
    i32 129, label %58
    i32 130, label %70
    i32 131, label %78
  ]

19:                                               ; preds = %4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @CR_AREF(i32 %23)
  %25 = trunc i64 %24 to i8
  %26 = call i32 @i_APCI1710_ClearCounterValue(%struct.comedi_device* %20, i8 zeroext %25)
  store i32 %26, i32* %10, align 4
  br label %88

27:                                               ; preds = %4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = call i32 @i_APCI1710_ClearAllCounterValue(%struct.comedi_device* %28)
  store i32 %29, i32* %10, align 4
  br label %88

30:                                               ; preds = %4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @CR_AREF(i32 %34)
  %36 = trunc i64 %35 to i8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = trunc i32 %43 to i8
  %45 = call i32 @i_APCI1710_SetInputFilter(%struct.comedi_device* %31, i8 zeroext %36, i8 zeroext %40, i8 zeroext %44)
  store i32 %45, i32* %10, align 4
  br label %88

46:                                               ; preds = %4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @CR_AREF(i32 %50)
  %52 = trunc i64 %51 to i8
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = call i32 @i_APCI1710_LatchCounter(%struct.comedi_device* %47, i8 zeroext %52, i8 zeroext %56)
  store i32 %57, i32* %10, align 4
  br label %88

58:                                               ; preds = %4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %60 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @CR_AREF(i32 %62)
  %64 = trunc i64 %63 to i8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = trunc i32 %67 to i8
  %69 = call i32 @i_APCI1710_SetIndexAndReferenceSource(%struct.comedi_device* %59, i8 zeroext %64, i8 zeroext %68)
  store i32 %69, i32* %10, align 4
  br label %88

70:                                               ; preds = %4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @CR_AREF(i32 %74)
  %76 = trunc i64 %75 to i8
  %77 = call i32 @i_APCI1710_SetDigitalChlOn(%struct.comedi_device* %71, i8 zeroext %76)
  store i32 %77, i32* %10, align 4
  br label %88

78:                                               ; preds = %4
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @CR_AREF(i32 %82)
  %84 = trunc i64 %83 to i8
  %85 = call i32 @i_APCI1710_SetDigitalChlOff(%struct.comedi_device* %79, i8 zeroext %84)
  store i32 %85, i32* %10, align 4
  br label %88

86:                                               ; preds = %4
  %87 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %78, %70, %58, %46, %30, %27, %19
  %89 = load i32, i32* %10, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI1710_ClearCounterValue(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @i_APCI1710_ClearAllCounterValue(%struct.comedi_device*) #1

declare dso_local i32 @i_APCI1710_SetInputFilter(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_LatchCounter(%struct.comedi_device*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_SetIndexAndReferenceSource(%struct.comedi_device*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_SetDigitalChlOn(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_SetDigitalChlOff(%struct.comedi_device*, i8 zeroext) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
