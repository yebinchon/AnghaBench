; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMM32AT_CNTRL = common dso_local global i32 0, align 4
@DMM32AT_DIOACC = common dso_local global i8 0, align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DMM32AT_DIRCL = common dso_local global i32 0, align 4
@DMM32AT_DIRCH = common dso_local global i32 0, align 4
@DMM32AT_DIOC = common dso_local global i32 0, align 4
@DMM32AT_DIRB = common dso_local global i32 0, align 4
@DMM32AT_DIOB = common dso_local global i32 0, align 4
@DMM32AT_DIRA = common dso_local global i32 0, align 4
@DMM32AT_DIOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dmm32at_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %140

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %23, %18
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = load i32, i32* @DMM32AT_CNTRL, align 4
  %46 = load i8, i8* @DMM32AT_DIOACC, align 1
  %47 = call i32 @dmm_outb(%struct.comedi_device* %44, i32 %45, i8 zeroext %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMM32AT_DIRCL, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %43
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMM32AT_DIRCH, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54, %43
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 16711680
  %66 = lshr i32 %65, 16
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = load i32, i32* @DMM32AT_DIOC, align 4
  %70 = load i8, i8* %10, align 1
  %71 = call i32 @dmm_outb(%struct.comedi_device* %68, i32 %69, i8 zeroext %70)
  br label %72

72:                                               ; preds = %61, %54
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DMM32AT_DIRB, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 65280
  %84 = lshr i32 %83, 8
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %10, align 1
  %86 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %87 = load i32, i32* @DMM32AT_DIOB, align 4
  %88 = load i8, i8* %10, align 1
  %89 = call i32 @dmm_outb(%struct.comedi_device* %86, i32 %87, i8 zeroext %88)
  br label %90

90:                                               ; preds = %79, %72
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DMM32AT_DIRA, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 255
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %10, align 1
  %103 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %104 = load i32, i32* @DMM32AT_DIOA, align 4
  %105 = load i8, i8* %10, align 1
  %106 = call i32 @dmm_outb(%struct.comedi_device* %103, i32 %104, i8 zeroext %105)
  br label %107

107:                                              ; preds = %97, %90
  %108 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %109 = load i32, i32* @DMM32AT_DIOC, align 4
  %110 = call i32 @dmm_inb(%struct.comedi_device* %108, i32 %109)
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 8
  store i32 %116, i32* %114, align 4
  %117 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %118 = load i32, i32* @DMM32AT_DIOB, align 4
  %119 = call i32 @dmm_inb(%struct.comedi_device* %117, i32 %118)
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  store i32 %127, i32* %125, align 4
  %128 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %129 = load i32, i32* @DMM32AT_DIOA, align 4
  %130 = call i32 @dmm_inb(%struct.comedi_device* %128, i32 %129)
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %137, i32* %139, align 4
  store i32 2, i32* %5, align 4
  br label %140

140:                                              ; preds = %107, %15
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @dmm_outb(%struct.comedi_device*, i32, i8 zeroext) #1

declare dso_local i32 @dmm_inb(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
