; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_setaitimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_setaitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@DMM32AT_CNTRDIO = common dso_local global i32 0, align 4
@DMM32AT_CNTRL = common dso_local global i32 0, align 4
@DMM32AT_CLKACC = common dso_local global i8 0, align 1
@DMM32AT_CLKCT = common dso_local global i32 0, align 4
@DMM32AT_CLKCT1 = common dso_local global i8 0, align 1
@DMM32AT_CLK1 = common dso_local global i32 0, align 4
@DMM32AT_CLKCT2 = common dso_local global i8 0, align 1
@DMM32AT_CLK2 = common dso_local global i32 0, align 4
@DMM32AT_INTCLOCK = common dso_local global i32 0, align 4
@DMM32AT_ADINT = common dso_local global i8 0, align 1
@DMM32AT_CLKSEL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmm32at_setaitimer(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 -56, i8* %5, align 1
  %9 = load i32, i32* %4, align 4
  %10 = udiv i32 %9, 20000
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %8, align 2
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 65280
  %15 = ashr i32 %14, 8
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i16, i16* %8, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = load i32, i32* @DMM32AT_CNTRDIO, align 4
  %23 = call i32 @dmm_outb(%struct.comedi_device* %21, i32 %22, i8 zeroext 0)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = load i32, i32* @DMM32AT_CNTRL, align 4
  %26 = load i8, i8* @DMM32AT_CLKACC, align 1
  %27 = call i32 @dmm_outb(%struct.comedi_device* %24, i32 %25, i8 zeroext %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %29 = load i32, i32* @DMM32AT_CLKCT, align 4
  %30 = load i8, i8* @DMM32AT_CLKCT1, align 1
  %31 = call i32 @dmm_outb(%struct.comedi_device* %28, i32 %29, i8 zeroext %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = load i32, i32* @DMM32AT_CLK1, align 4
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @dmm_outb(%struct.comedi_device* %32, i32 %33, i8 zeroext %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = load i32, i32* @DMM32AT_CLKCT, align 4
  %38 = load i8, i8* @DMM32AT_CLKCT2, align 1
  %39 = call i32 @dmm_outb(%struct.comedi_device* %36, i32 %37, i8 zeroext %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = load i32, i32* @DMM32AT_CLK2, align 4
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @dmm_outb(%struct.comedi_device* %40, i32 %41, i8 zeroext %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = load i32, i32* @DMM32AT_CLK2, align 4
  %46 = load i8, i8* %7, align 1
  %47 = call i32 @dmm_outb(%struct.comedi_device* %44, i32 %45, i8 zeroext %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = load i32, i32* @DMM32AT_INTCLOCK, align 4
  %50 = load i8, i8* @DMM32AT_ADINT, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @DMM32AT_CLKSEL, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %51, %53
  %55 = trunc i32 %54 to i8
  %56 = call i32 @dmm_outb(%struct.comedi_device* %48, i32 %49, i8 zeroext %55)
  ret void
}

declare dso_local i32 @dmm_outb(%struct.comedi_device*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
