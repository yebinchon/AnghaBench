; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DMM32AT_FIFOCNTRL = common dso_local global i32 0, align 4
@DMM32AT_FIFORESET = common dso_local global i32 0, align 4
@DMM32AT_AILOW = common dso_local global i32 0, align 4
@DMM32AT_AIHIGH = common dso_local global i32 0, align 4
@DMM32AT_AICONF = common dso_local global i32 0, align 4
@dmm32at_rangebits = common dso_local global i32* null, align 8
@DMM32AT_AIRBACK = common dso_local global i32 0, align 4
@DMM32AT_STATUS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DMM32AT_CONV = common dso_local global i32 0, align 4
@DMM32AT_AISTAT = common dso_local global i32 0, align 4
@DMM32AT_AILSB = common dso_local global i32 0, align 4
@DMM32AT_AIMSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dmm32at_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_CHAN(i32 %20)
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %21, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %16, align 1
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CR_RANGE(i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = load i32, i32* @DMM32AT_FIFOCNTRL, align 4
  %34 = load i32, i32* @DMM32AT_FIFORESET, align 4
  %35 = call i32 @dmm_outb(%struct.comedi_device* %32, i32 %33, i32 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = load i32, i32* @DMM32AT_AILOW, align 4
  %38 = load i8, i8* %16, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 @dmm_outb(%struct.comedi_device* %36, i32 %37, i32 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load i32, i32* @DMM32AT_AIHIGH, align 4
  %43 = load i8, i8* %16, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 @dmm_outb(%struct.comedi_device* %41, i32 %42, i32 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = load i32, i32* @DMM32AT_AICONF, align 4
  %48 = load i32*, i32** @dmm32at_rangebits, align 8
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dmm_outb(%struct.comedi_device* %46, i32 %47, i32 %52)
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %70, %4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 40000
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load i32, i32* @DMM32AT_AIRBACK, align 4
  %60 = call i8* @dmm_inb(%struct.comedi_device* %58, i32 %59)
  %61 = ptrtoint i8* %60 to i8
  store i8 %61, i8* %13, align 1
  %62 = load i8, i8* %13, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @DMM32AT_STATUS, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %73

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %54

73:                                               ; preds = %68, %54
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 40000
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %143

80:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %138, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %141

87:                                               ; preds = %81
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = load i32, i32* @DMM32AT_CONV, align 4
  %90 = call i32 @dmm_outb(%struct.comedi_device* %88, i32 %89, i32 255)
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %107, %87
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 40000
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = load i32, i32* @DMM32AT_AISTAT, align 4
  %97 = call i8* @dmm_inb(%struct.comedi_device* %95, i32 %96)
  %98 = ptrtoint i8* %97 to i8
  store i8 %98, i8* %13, align 1
  %99 = load i8, i8* %13, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @DMM32AT_STATUS, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %100, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %110

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %91

110:                                              ; preds = %105, %91
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 40000
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* @ETIMEDOUT, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %143

117:                                              ; preds = %110
  %118 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %119 = load i32, i32* @DMM32AT_AILSB, align 4
  %120 = call i8* @dmm_inb(%struct.comedi_device* %118, i32 %119)
  %121 = ptrtoint i8* %120 to i16
  store i16 %121, i16* %15, align 2
  %122 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %123 = load i32, i32* @DMM32AT_AIMSB, align 4
  %124 = call i8* @dmm_inb(%struct.comedi_device* %122, i32 %123)
  %125 = ptrtoint i8* %124 to i16
  store i16 %125, i16* %14, align 2
  %126 = load i16, i16* %14, align 2
  %127 = zext i16 %126 to i32
  %128 = xor i32 %127, 128
  %129 = shl i32 %128, 8
  %130 = load i16, i16* %15, align 2
  %131 = zext i16 %130 to i32
  %132 = add nsw i32 %129, %131
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %117
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %81

141:                                              ; preds = %81
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %113, %76
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @dmm_outb(%struct.comedi_device*, i32, i32) #1

declare dso_local i8* @dmm_inb(%struct.comedi_device*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
