; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMM32AT_DIRA = common dso_local global i8 0, align 1
@DMM32AT_DIRB = common dso_local global i8 0, align 1
@DMM32AT_DIRCL = common dso_local global i8 0, align 1
@DMM32AT_DIRCH = common dso_local global i8 0, align 1
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DMM32AT_CNTRL = common dso_local global i32 0, align 4
@DMM32AT_DIOACC = common dso_local global i8 0, align 1
@DMM32AT_DIOCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dmm32at_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %78

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8, i8* @DMM32AT_DIRA, align 1
  store i8 %27, i8* %10, align 1
  br label %42

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8, i8* @DMM32AT_DIRB, align 1
  store i8 %32, i8* %10, align 1
  br label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8, i8* @DMM32AT_DIRCL, align 1
  store i8 %37, i8* %10, align 1
  br label %40

38:                                               ; preds = %33
  %39 = load i8, i8* @DMM32AT_DIRCH, align 1
  store i8 %39, i8* %10, align 1
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @COMEDI_OUTPUT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, %51
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  br label %67

58:                                               ; preds = %42
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %60
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  br label %67

67:                                               ; preds = %58, %48
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = load i32, i32* @DMM32AT_CNTRL, align 4
  %70 = load i8, i8* @DMM32AT_DIOACC, align 1
  %71 = call i32 @dmm_outb(%struct.comedi_device* %68, i32 %69, i8 zeroext %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = load i32, i32* @DMM32AT_DIOCONF, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @dmm_outb(%struct.comedi_device* %72, i32 %73, i8 zeroext %76)
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %67, %20
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dmm_outb(%struct.comedi_device*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
