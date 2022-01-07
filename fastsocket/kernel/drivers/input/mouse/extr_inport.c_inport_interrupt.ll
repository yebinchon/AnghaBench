; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_inport.c_inport_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_inport.c_inport_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INPORT_REG_MODE = common dso_local global i32 0, align 4
@INPORT_CONTROL_PORT = common dso_local global i32 0, align 4
@INPORT_MODE_HOLD = common dso_local global i32 0, align 4
@INPORT_MODE_IRQ = common dso_local global i32 0, align 4
@INPORT_MODE_BASE = common dso_local global i32 0, align 4
@INPORT_DATA_PORT = common dso_local global i32 0, align 4
@INPORT_REG_X = common dso_local global i32 0, align 4
@inport_dev = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@INPORT_REG_Y = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@INPORT_REG_BTNS = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @inport_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inport_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @INPORT_REG_MODE, align 4
  %7 = load i32, i32* @INPORT_CONTROL_PORT, align 4
  %8 = call i32 @outb(i32 %6, i32 %7)
  %9 = load i32, i32* @INPORT_MODE_HOLD, align 4
  %10 = load i32, i32* @INPORT_MODE_IRQ, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @INPORT_MODE_BASE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @INPORT_DATA_PORT, align 4
  %15 = call i32 @outb(i32 %13, i32 %14)
  %16 = load i32, i32* @INPORT_REG_X, align 4
  %17 = load i32, i32* @INPORT_CONTROL_PORT, align 4
  %18 = call i32 @outb(i32 %16, i32 %17)
  %19 = load i32, i32* @inport_dev, align 4
  %20 = load i32, i32* @REL_X, align 4
  %21 = load i32, i32* @INPORT_DATA_PORT, align 4
  %22 = call zeroext i8 @inb(i32 %21)
  %23 = call i32 @input_report_rel(i32 %19, i32 %20, i8 zeroext %22)
  %24 = load i32, i32* @INPORT_REG_Y, align 4
  %25 = load i32, i32* @INPORT_CONTROL_PORT, align 4
  %26 = call i32 @outb(i32 %24, i32 %25)
  %27 = load i32, i32* @inport_dev, align 4
  %28 = load i32, i32* @REL_Y, align 4
  %29 = load i32, i32* @INPORT_DATA_PORT, align 4
  %30 = call zeroext i8 @inb(i32 %29)
  %31 = call i32 @input_report_rel(i32 %27, i32 %28, i8 zeroext %30)
  %32 = load i32, i32* @INPORT_REG_BTNS, align 4
  %33 = load i32, i32* @INPORT_CONTROL_PORT, align 4
  %34 = call i32 @outb(i32 %32, i32 %33)
  %35 = load i32, i32* @INPORT_DATA_PORT, align 4
  %36 = call zeroext i8 @inb(i32 %35)
  store i8 %36, i8* %5, align 1
  %37 = load i32, i32* @inport_dev, align 4
  %38 = load i32, i32* @BTN_MIDDLE, align 4
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 1
  %42 = trunc i32 %41 to i8
  %43 = call i32 @input_report_key(i32 %37, i32 %38, i8 zeroext %42)
  %44 = load i32, i32* @inport_dev, align 4
  %45 = load i32, i32* @BTN_LEFT, align 4
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 2
  %49 = trunc i32 %48 to i8
  %50 = call i32 @input_report_key(i32 %44, i32 %45, i8 zeroext %49)
  %51 = load i32, i32* @inport_dev, align 4
  %52 = load i32, i32* @BTN_RIGHT, align 4
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = call i32 @input_report_key(i32 %51, i32 %52, i8 zeroext %56)
  %58 = load i32, i32* @INPORT_REG_MODE, align 4
  %59 = load i32, i32* @INPORT_CONTROL_PORT, align 4
  %60 = call i32 @outb(i32 %58, i32 %59)
  %61 = load i32, i32* @INPORT_MODE_IRQ, align 4
  %62 = load i32, i32* @INPORT_MODE_BASE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @INPORT_DATA_PORT, align 4
  %65 = call i32 @outb(i32 %63, i32 %64)
  %66 = load i32, i32* @inport_dev, align 4
  %67 = call i32 @input_sync(i32 %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %68
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i8 zeroext) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
