; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_pc110pad.c_pc110pad_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_pc110pad.c_pc110pad_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pc110pad_io = common dso_local global i32 0, align 4
@pc110pad_data = common dso_local global i32* null, align 8
@pc110pad_count = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@pc110pad_dev = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pc110pad_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pc110pad_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @pc110pad_io, align 4
  %9 = call i32 @inb_p(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @pc110pad_io, align 4
  %11 = add nsw i32 %10, 2
  %12 = call i32 @inb_p(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, 1
  %15 = load i32, i32* @pc110pad_io, align 4
  %16 = add nsw i32 %15, 2
  %17 = call i32 @outb(i32 %14, i32 %16)
  %18 = call i32 @udelay(i32 2)
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -2
  %21 = load i32, i32* @pc110pad_io, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @outb(i32 %20, i32 %22)
  %24 = call i32 @udelay(i32 2)
  %25 = call i32 @inb_p(i32 100)
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @pc110pad_data, align 8
  %28 = load i32, i32* @pc110pad_count, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @pc110pad_count, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @pc110pad_count, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %77

36:                                               ; preds = %2
  %37 = load i32, i32* @pc110pad_dev, align 4
  %38 = load i32, i32* @BTN_TOUCH, align 4
  %39 = load i32*, i32** @pc110pad_data, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = call i32 @input_report_key(i32 %37, i32 %38, i32 %42)
  %44 = load i32, i32* @pc110pad_dev, align 4
  %45 = load i32, i32* @ABS_X, align 4
  %46 = load i32*, i32** @pc110pad_data, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @pc110pad_data, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 3
  %53 = and i32 %52, 128
  %54 = or i32 %48, %53
  %55 = load i32*, i32** @pc110pad_data, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 1
  %59 = and i32 %58, 256
  %60 = or i32 %54, %59
  %61 = call i32 @input_report_abs(i32 %44, i32 %45, i32 %60)
  %62 = load i32, i32* @pc110pad_dev, align 4
  %63 = load i32, i32* @ABS_Y, align 4
  %64 = load i32*, i32** @pc110pad_data, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @pc110pad_data, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 4
  %71 = and i32 %70, 128
  %72 = or i32 %66, %71
  %73 = call i32 @input_report_abs(i32 %62, i32 %63, i32 %72)
  %74 = load i32, i32* @pc110pad_dev, align 4
  %75 = call i32 @input_sync(i32 %74)
  store i32 0, i32* @pc110pad_count, align 4
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %36, %34
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
