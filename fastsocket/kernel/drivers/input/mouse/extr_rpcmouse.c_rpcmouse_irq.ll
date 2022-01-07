; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_rpcmouse.c_rpcmouse_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_rpcmouse.c_rpcmouse_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@IOMD_MOUSEX = common dso_local global i32 0, align 4
@IOMD_MOUSEY = common dso_local global i32 0, align 4
@rpcmouse_lastx = common dso_local global i16 0, align 2
@rpcmouse_lasty = common dso_local global i16 0, align 2
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rpcmouse_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcmouse_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.input_dev*
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load i32, i32* @IOMD_MOUSEX, align 4
  %14 = call i64 @iomd_readl(i32 %13)
  %15 = trunc i64 %14 to i16
  store i16 %15, i16* %6, align 2
  %16 = load i32, i32* @IOMD_MOUSEY, align 4
  %17 = call i64 @iomd_readl(i32 %16)
  %18 = trunc i64 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = call i32 @__raw_readl(i32 -533659648)
  %20 = xor i32 %19, 112
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %10, align 2
  %22 = load i16, i16* %6, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @rpcmouse_lastx, align 2
  %25 = sext i16 %24 to i32
  %26 = sub nsw i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %8, align 2
  %28 = load i16, i16* %7, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* @rpcmouse_lasty, align 2
  %31 = sext i16 %30 to i32
  %32 = sub nsw i32 %29, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %9, align 2
  %34 = load i16, i16* %6, align 2
  store i16 %34, i16* @rpcmouse_lastx, align 2
  %35 = load i16, i16* %7, align 2
  store i16 %35, i16* @rpcmouse_lasty, align 2
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = load i32, i32* @REL_X, align 4
  %38 = load i16, i16* %8, align 2
  %39 = call i32 @input_report_rel(%struct.input_dev* %36, i32 %37, i16 signext %38)
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = load i32, i32* @REL_Y, align 4
  %42 = load i16, i16* %9, align 2
  %43 = sext i16 %42 to i32
  %44 = sub nsw i32 0, %43
  %45 = trunc i32 %44 to i16
  %46 = call i32 @input_report_rel(%struct.input_dev* %40, i32 %41, i16 signext %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = load i32, i32* @BTN_LEFT, align 4
  %49 = load i16, i16* %10, align 2
  %50 = sext i16 %49 to i32
  %51 = and i32 %50, 64
  %52 = trunc i32 %51 to i16
  %53 = call i32 @input_report_key(%struct.input_dev* %47, i32 %48, i16 signext %52)
  %54 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %55 = load i32, i32* @BTN_MIDDLE, align 4
  %56 = load i16, i16* %10, align 2
  %57 = sext i16 %56 to i32
  %58 = and i32 %57, 32
  %59 = trunc i32 %58 to i16
  %60 = call i32 @input_report_key(%struct.input_dev* %54, i32 %55, i16 signext %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = load i32, i32* @BTN_RIGHT, align 4
  %63 = load i16, i16* %10, align 2
  %64 = sext i16 %63 to i32
  %65 = and i32 %64, 16
  %66 = trunc i32 %65 to i16
  %67 = call i32 @input_report_key(%struct.input_dev* %61, i32 %62, i16 signext %66)
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = call i32 @input_sync(%struct.input_dev* %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %70
}

declare dso_local i64 @iomd_readl(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i16 signext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i16 signext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
