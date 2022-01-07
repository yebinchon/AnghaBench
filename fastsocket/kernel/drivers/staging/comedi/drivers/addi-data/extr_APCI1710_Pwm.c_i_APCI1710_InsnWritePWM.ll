; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_InsnWritePWM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_InsnWritePWM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Write Config Parameter Wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnWritePWM(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  switch i32 %16, label %83 [
    i32 129, label %17
    i32 130, label %49
    i32 128, label %61
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
  %39 = trunc i32 %38 to i8
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i8
  %48 = call i32 @i_APCI1710_EnablePWM(%struct.comedi_device* %18, i8 zeroext %23, i8 zeroext %27, i8 zeroext %31, i8 zeroext %35, i8 zeroext %39, i8 zeroext %43, i8 zeroext %47)
  store i32 %48, i32* %10, align 4
  br label %85

49:                                               ; preds = %4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @CR_AREF(i32 %53)
  %55 = trunc i64 %54 to i8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = call i32 @i_APCI1710_DisablePWM(%struct.comedi_device* %50, i8 zeroext %55, i8 zeroext %59)
  store i32 %60, i32* %10, align 4
  br label %85

61:                                               ; preds = %4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @CR_AREF(i32 %65)
  %67 = trunc i64 %66 to i8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @i_APCI1710_SetNewPWMTiming(%struct.comedi_device* %62, i8 zeroext %67, i8 zeroext %71, i8 zeroext %75, i32 %78, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %85

83:                                               ; preds = %4
  %84 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %61, %49, %17
  %86 = load i32, i32* %10, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %10, align 4
  ret i32 %93
}

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI1710_EnablePWM(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @i_APCI1710_DisablePWM(%struct.comedi_device*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i_APCI1710_SetNewPWMTiming(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8 zeroext, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
