; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_logibm.c_logibm_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_logibm.c_logibm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOGIBM_READ_X_LOW = common dso_local global i32 0, align 4
@LOGIBM_CONTROL_PORT = common dso_local global i32 0, align 4
@LOGIBM_DATA_PORT = common dso_local global i32 0, align 4
@LOGIBM_READ_X_HIGH = common dso_local global i32 0, align 4
@LOGIBM_READ_Y_LOW = common dso_local global i32 0, align 4
@LOGIBM_READ_Y_HIGH = common dso_local global i32 0, align 4
@logibm_dev = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@LOGIBM_ENABLE_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @logibm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logibm_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @LOGIBM_READ_X_LOW, align 4
  %9 = load i32, i32* @LOGIBM_CONTROL_PORT, align 4
  %10 = call i32 @outb(i32 %8, i32 %9)
  %11 = load i32, i32* @LOGIBM_DATA_PORT, align 4
  %12 = call i32 @inb(i32 %11)
  %13 = and i32 %12, 15
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i32, i32* @LOGIBM_READ_X_HIGH, align 4
  %16 = load i32, i32* @LOGIBM_CONTROL_PORT, align 4
  %17 = call i32 @outb(i32 %15, i32 %16)
  %18 = load i32, i32* @LOGIBM_DATA_PORT, align 4
  %19 = call i32 @inb(i32 %18)
  %20 = and i32 %19, 15
  %21 = shl i32 %20, 4
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  %26 = load i32, i32* @LOGIBM_READ_Y_LOW, align 4
  %27 = load i32, i32* @LOGIBM_CONTROL_PORT, align 4
  %28 = call i32 @outb(i32 %26, i32 %27)
  %29 = load i32, i32* @LOGIBM_DATA_PORT, align 4
  %30 = call i32 @inb(i32 %29)
  %31 = and i32 %30, 15
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %6, align 1
  %33 = load i32, i32* @LOGIBM_READ_Y_HIGH, align 4
  %34 = load i32, i32* @LOGIBM_CONTROL_PORT, align 4
  %35 = call i32 @outb(i32 %33, i32 %34)
  %36 = load i32, i32* @LOGIBM_DATA_PORT, align 4
  %37 = call i32 @inb(i32 %36)
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 15
  %42 = shl i32 %41, 4
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %6, align 1
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, -1
  %50 = ashr i32 %49, 5
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %7, align 1
  %52 = load i32, i32* @logibm_dev, align 4
  %53 = load i32, i32* @REL_X, align 4
  %54 = load i8, i8* %5, align 1
  %55 = call i32 @input_report_rel(i32 %52, i32 %53, i8 signext %54)
  %56 = load i32, i32* @logibm_dev, align 4
  %57 = load i32, i32* @REL_Y, align 4
  %58 = load i8, i8* %6, align 1
  %59 = call i32 @input_report_rel(i32 %56, i32 %57, i8 signext %58)
  %60 = load i32, i32* @logibm_dev, align 4
  %61 = load i32, i32* @BTN_RIGHT, align 4
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 1
  %65 = trunc i32 %64 to i8
  %66 = call i32 @input_report_key(i32 %60, i32 %61, i8 zeroext %65)
  %67 = load i32, i32* @logibm_dev, align 4
  %68 = load i32, i32* @BTN_MIDDLE, align 4
  %69 = load i8, i8* %7, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 2
  %72 = trunc i32 %71 to i8
  %73 = call i32 @input_report_key(i32 %67, i32 %68, i8 zeroext %72)
  %74 = load i32, i32* @logibm_dev, align 4
  %75 = load i32, i32* @BTN_LEFT, align 4
  %76 = load i8, i8* %7, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = call i32 @input_report_key(i32 %74, i32 %75, i8 zeroext %79)
  %81 = load i32, i32* @logibm_dev, align 4
  %82 = call i32 @input_sync(i32 %81)
  %83 = load i32, i32* @LOGIBM_ENABLE_IRQ, align 4
  %84 = load i32, i32* @LOGIBM_CONTROL_PORT, align 4
  %85 = call i32 @outb(i32 %83, i32 %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %86
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i8 signext) #1

declare dso_local i32 @input_report_key(i32, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
