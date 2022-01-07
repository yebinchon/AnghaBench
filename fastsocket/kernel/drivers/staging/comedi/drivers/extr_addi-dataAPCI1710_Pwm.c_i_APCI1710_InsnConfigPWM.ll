; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Pwm.c_i_APCI1710_InsnConfigPWM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Pwm.c_i_APCI1710_InsnConfigPWM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c" Config Parameter Wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnConfigPWM(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  store i32 0, i32* %10, align 4
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call zeroext i8 @CR_CHAN(i32 %13)
  store i8 %14, i8* %9, align 1
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %84 [
    i32 128, label %17
    i32 129, label %47
  ]

17:                                               ; preds = %4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @CR_AREF(i32 %21)
  %23 = trunc i64 %22 to i8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = call i32 @i_APCI1710_InitPWM(%struct.comedi_device* %18, i8 zeroext %23, i8 zeroext %27, i8 zeroext %31, i8 zeroext %35, i32 %38, i32 %41, i32* %43, i32* %45)
  store i32 %46, i32* %10, align 4
  br label %86

47:                                               ; preds = %4
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @CR_AREF(i32 %51)
  %53 = trunc i64 %52 to i8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = bitcast i32* %59 to i8*
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = bitcast i32* %66 to i8*
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = bitcast i32* %69 to i8*
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = bitcast i32* %72 to i8*
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  %76 = bitcast i32* %75 to i8*
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  %79 = bitcast i32* %78 to i8*
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = bitcast i32* %81 to i8*
  %83 = call i32 @i_APCI1710_GetPWMInitialisation(%struct.comedi_device* %48, i8 zeroext %53, i8 zeroext %57, i8* %60, i32* %62, i32* %64, i8* %67, i8* %70, i8* %73, i8* %76, i8* %79, i8* %82)
  store i32 %83, i32* %10, align 4
  br label %86

84:                                               ; preds = %4
  %85 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %47, %17
  %87 = load i32, i32* %10, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI1710_InitPWM(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32, i32, i32*, i32*) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @i_APCI1710_GetPWMInitialisation(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
