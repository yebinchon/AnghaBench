; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_hp680_ts_input.c_do_softint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_hp680_ts_input.c_do_softint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@PHDR = common dso_local global i32 0, align 4
@PHDR_TS_PEN_DOWN = common dso_local global i32 0, align 4
@SCPDR = common dso_local global i32 0, align 4
@SCPDR_TS_SCAN_ENABLE = common dso_local global i32 0, align 4
@SCPDR_TS_SCAN_Y = common dso_local global i32 0, align 4
@ADC_CHANNEL_TS_Y = common dso_local global i32 0, align 4
@SCPDR_TS_SCAN_X = common dso_local global i32 0, align 4
@ADC_CHANNEL_TS_X = common dso_local global i32 0, align 4
@hp680_ts_dev = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@HP680_TS_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @do_softint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_softint(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @PHDR, align 4
  %8 = call i32 @ctrl_inb(i32 %7)
  %9 = load i32, i32* @PHDR_TS_PEN_DOWN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load i32, i32* @SCPDR, align 4
  %14 = call i32 @ctrl_inb(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @SCPDR_TS_SCAN_ENABLE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @SCPDR_TS_SCAN_Y, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SCPDR, align 4
  %24 = call i32 @ctrl_outb(i32 %22, i32 %23)
  %25 = call i32 @udelay(i32 30)
  %26 = load i32, i32* @ADC_CHANNEL_TS_Y, align 4
  %27 = call i32 @adc_single(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @SCPDR, align 4
  %29 = call i32 @ctrl_inb(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @SCPDR_TS_SCAN_Y, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @SCPDR_TS_SCAN_X, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SCPDR, align 4
  %39 = call i32 @ctrl_outb(i32 %37, i32 %38)
  %40 = call i32 @udelay(i32 30)
  %41 = load i32, i32* @ADC_CHANNEL_TS_X, align 4
  %42 = call i32 @adc_single(i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @SCPDR, align 4
  %44 = call i32 @ctrl_inb(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @SCPDR_TS_SCAN_X, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @SCPDR_TS_SCAN_ENABLE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SCPDR, align 4
  %54 = call i32 @ctrl_outb(i32 %52, i32 %53)
  %55 = call i32 @udelay(i32 100)
  %56 = load i32, i32* @PHDR, align 4
  %57 = call i32 @ctrl_inb(i32 %56)
  %58 = load i32, i32* @PHDR_TS_PEN_DOWN, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %12, %1
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* @hp680_ts_dev, align 4
  %65 = load i32, i32* @BTN_TOUCH, align 4
  %66 = call i32 @input_report_key(i32 %64, i32 %65, i32 1)
  %67 = load i32, i32* @hp680_ts_dev, align 4
  %68 = load i32, i32* @ABS_X, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @input_report_abs(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @hp680_ts_dev, align 4
  %72 = load i32, i32* @ABS_Y, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @input_report_abs(i32 %71, i32 %72, i32 %73)
  br label %79

75:                                               ; preds = %60
  %76 = load i32, i32* @hp680_ts_dev, align 4
  %77 = load i32, i32* @BTN_TOUCH, align 4
  %78 = call i32 @input_report_key(i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %75, %63
  %80 = load i32, i32* @hp680_ts_dev, align 4
  %81 = call i32 @input_sync(i32 %80)
  %82 = load i32, i32* @HP680_TS_IRQ, align 4
  %83 = call i32 @enable_irq(i32 %82)
  ret void
}

declare dso_local i32 @ctrl_inb(i32) #1

declare dso_local i32 @ctrl_outb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @adc_single(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
