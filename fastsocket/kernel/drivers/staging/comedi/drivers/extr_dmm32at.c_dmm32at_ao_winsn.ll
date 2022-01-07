; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DMM32AT_DACLSB = common dso_local global i32 0, align 4
@DMM32AT_DACMSB = common dso_local global i32 0, align 4
@DMM32AT_DACSTAT = common dso_local global i32 0, align 4
@DMM32AT_DACBUSY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dmm32at_ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %91, %4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %19
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %13, align 1
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = lshr i32 %48, 8
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 64
  %52 = add i32 %49, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %12, align 1
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = load i32, i32* @DMM32AT_DACLSB, align 4
  %56 = load i8, i8* %13, align 1
  %57 = call i32 @dmm_outb(%struct.comedi_device* %54, i32 %55, i8 zeroext %56)
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load i32, i32* @DMM32AT_DACMSB, align 4
  %60 = load i8, i8* %12, align 1
  %61 = call i32 @dmm_outb(%struct.comedi_device* %58, i32 %59, i8 zeroext %60)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %77, %25
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 40000
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = load i32, i32* @DMM32AT_DACSTAT, align 4
  %68 = call zeroext i8 @dmm_inb(%struct.comedi_device* %66, i32 %67)
  store i8 %68, i8* %14, align 1
  %69 = load i8, i8* %14, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @DMM32AT_DACBUSY, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %80

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %62

80:                                               ; preds = %75, %62
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 40000
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %96

87:                                               ; preds = %80
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = load i32, i32* @DMM32AT_DACMSB, align 4
  %90 = call zeroext i8 @dmm_inb(%struct.comedi_device* %88, i32 %89)
  store i8 %90, i8* %14, align 1
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %19

94:                                               ; preds = %19
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %83
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dmm_outb(%struct.comedi_device*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @dmm_inb(%struct.comedi_device*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
