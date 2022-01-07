; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_InsnBitsTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_InsnBitsTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"\0A82X54\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Bits Config Parameter Wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsTimer(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %11 = load i32*, i32** %8, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %9, align 1
  %15 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i32
  switch i32 %17, label %81 [
    i32 129, label %18
    i32 131, label %33
    i32 130, label %49
    i32 128, label %65
  ]

18:                                               ; preds = %4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CR_AREF(i32 %22)
  %24 = trunc i64 %23 to i8
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CR_CHAN(i32 %27)
  %29 = trunc i64 %28 to i8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i32 @i_APCI1710_ReadTimerValue(%struct.comedi_device* %19, i8 zeroext %24, i8 zeroext %29, i32* %31)
  store i32 %32, i32* %10, align 4
  br label %83

33:                                               ; preds = %4
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @CR_AREF(i32 %37)
  %39 = trunc i64 %38 to i8
  %40 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @CR_CHAN(i32 %42)
  %44 = trunc i64 %43 to i8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @i_APCI1710_GetTimerOutputLevel(%struct.comedi_device* %34, i8 zeroext %39, i8 zeroext %44, i8* %47)
  store i32 %48, i32* %10, align 4
  br label %83

49:                                               ; preds = %4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @CR_AREF(i32 %53)
  %55 = trunc i64 %54 to i8
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @CR_CHAN(i32 %58)
  %60 = trunc i64 %59 to i8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = bitcast i32* %62 to i8*
  %64 = call i32 @i_APCI1710_GetTimerProgressStatus(%struct.comedi_device* %50, i8 zeroext %55, i8 zeroext %60, i8* %63)
  store i32 %64, i32* %10, align 4
  br label %83

65:                                               ; preds = %4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %67 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @CR_AREF(i32 %69)
  %71 = trunc i64 %70 to i8
  %72 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @CR_CHAN(i32 %74)
  %76 = trunc i64 %75 to i8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @i_APCI1710_WriteTimerValue(%struct.comedi_device* %66, i8 zeroext %71, i8 zeroext %76, i32 %79)
  store i32 %80, i32* %10, align 4
  br label %83

81:                                               ; preds = %4
  %82 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %83

83:                                               ; preds = %81, %65, %49, %33, %18
  %84 = load i32, i32* %10, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @i_APCI1710_ReadTimerValue(%struct.comedi_device*, i8 zeroext, i8 zeroext, i32*) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI1710_GetTimerOutputLevel(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_GetTimerProgressStatus(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_WriteTimerValue(%struct.comedi_device*, i8 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
